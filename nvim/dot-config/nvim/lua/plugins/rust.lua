return {
	"mrcjkb/rustaceanvim",
	version = "^5", -- Recommended
	ft = { "rust" }, -- This plugin is already lazy
	-- ["rust-analyzer"] = {
	-- cargo = {
	-- allFeatures = true
	-- }
	-- },
	config = function()
		-- vim.g.rustaceanvim.tools.test_executor = 'background'
		local mason_registry = require("mason-registry")
		local codelldb = mason_registry.get_package("codelldb")
		local extenstion_path = codelldb:get_install_path() .. "/extension/"
		local codelldb_path = extenstion_path .. "adapter/codelldb"
		local liblldb_path = extenstion_path .. "lldb/lib/liblldb.dylib"
		local cfg = require("rustaceanvim.config")

		vim.g.rustaceanvim = {
			tools = {
				test_executor = "background",
			},
			dap = {
				adapter = cfg.get_codelldb_adapter(codelldb_path, liblldb_path),
			},
		}

		local bufnr = vim.api.nvim_get_current_buf()
		vim.keymap.set("n", "<leader>ca", function()
			vim.cmd.RustLsp("codeAction") -- supports rust-analyzer's grouping
			-- or vim.lsp.buf.codeAction() if you don't want grouping.
		end, { silent = true, buffer = bufnr, desc = "Actions" })
		vim.keymap.set(
			"n",
			"K", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
			function()
				local winid = require("ufo").peekFoldedLinesUnderCursor()
				if not winid then
					vim.cmd.RustLsp({ "hover", "actions" })
				end
			end,
			{ silent = true, buffer = bufnr, desc = "Hover actions" }
		)
		vim.keymap.set(
			"n",
			"<leader>dr", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
			function()
				vim.cmd.RustLsp("runnables")
			end,
			{ silent = true, buffer = bufnr, desc = "Runnables" }
		)
		vim.keymap.set(
			"n",
			"<leader>dd", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
			function()
				vim.cmd.RustLsp("debuggables")
			end,
			{ silent = true, buffer = bufnr, desc = "Debugables" }
		)
		vim.keymap.set(
			"n",
			"<leader>gx", -- Override Neovim's built-in hover keymap with rustaceanvim's hover actions
			function()
				vim.cmd.RustLsp("openDocs")
			end,
			{ silent = true, buffer = bufnr, desc = "Open docs in browser" }
		)
	end,
}
