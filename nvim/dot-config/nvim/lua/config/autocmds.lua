-- Lsp progress
local progress = vim.defaulttable()
vim.api.nvim_create_autocmd("LspProgress", {
	---@param ev {data: {client_id: integer, params: lsp.ProgressParams}}
	callback = function(ev)
		local client = vim.lsp.get_client_by_id(ev.data.client_id)
		local value = ev.data.params.value --[[@as {percentage?: number, title?: string, message?: string, kind: "begin" | "report" | "end"}]]
		if not client or type(value) ~= "table" then
			return
		end
		local p = progress[client.id]

		for i = 1, #p + 1 do
			if i == #p + 1 or p[i].token == ev.data.params.token then
				p[i] = {
					token = ev.data.params.token,
					msg = ("[%3d%%] %s%s"):format(
						value.kind == "end" and 100 or value.percentage or 100,
						value.title or "",
						value.message and (" **%s**"):format(value.message) or ""
					),
					done = value.kind == "end",
				}
				break
			end
		end

		local msg = {} ---@type string[]
		progress[client.id] = vim.tbl_filter(function(v)
			return table.insert(msg, v.msg) or not v.done
		end, p)

		local spinner = { "⠋", "⠙", "⠹", "⠸", "⠼", "⠴", "⠦", "⠧", "⠇", "⠏" }
		vim.notify(table.concat(msg, "\n"), "info", {
			id = "lsp_progress",
			title = client.name,
			opts = function(notif)
				notif.icon = #progress[client.id] == 0 and " "
					or spinner[math.floor(vim.uv.hrtime() / (1e6 * 80)) % #spinner + 1]
			end,
		})
	end,
})

-- Format on save async lsp-zero
vim.api.nvim_create_autocmd("LspAttach", {
	callback = function(event)
		local id = vim.tbl_get(event, "data", "client_id")
		local client = id and vim.lsp.get_client_by_id(id)
		if client == nil then
			return
		end

		-- make sure there is at least one client with formatting capabilities
		if client.supports_method("textDocument/formatting") then
			require("lsp-zero").buffer_autoformat()
		end
	end,
})

local function check_codelens_support()
	local clients = vim.lsp.get_clients({ bufnr = 0 })
	for _, c in ipairs(clients) do
		if c.server_capabilities.codeLensProvider then
			return true
		end
	end
	return false
end

vim.api.nvim_create_autocmd({ "TextChanged", "InsertLeave", "CursorHold", "LspAttach", "BufEnter" }, {
	buffer = bufnr,
	callback = function()
		if check_codelens_support() then
			vim.lsp.codelens.refresh({ bufnr = 0 })
		end
	end,
})
-- trigger codelens refresh
vim.api.nvim_exec_autocmds("User", { pattern = "LspAttached" })

-- Close all folds at file enter
local function applyFoldsAndThenCloseAllFolds(bufnr, providerName)
	require("async")(function()
		bufnr = vim.api.nvim_get_current_buf()
		-- make sure buffer is attached
		require("ufo").attach(bufnr)
		-- getFolds return Promise if providerName == "lsp"
		local ranges = await(require("ufo").getFolds(bufnr, providerName))
		local ok = require("ufo").applyFolds(bufnr, ranges)
		if ok then
			require("ufo").closeAllFolds()
		end
	end)
end

vim.api.nvim_create_autocmd("BufRead", {
	pattern = "*",
	callback = function(e)
		applyFoldsAndThenCloseAllFolds(e.buf, "lsp")
	end,
})
