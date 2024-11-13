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
    end
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

vim.api.nvim_create_autocmd({ 'TextChanged', 'InsertLeave', 'CursorHold', 'LspAttach', 'BufEnter' }, {
buffer = bufnr,
callback = function ()
  if check_codelens_support() then
    vim.lsp.codelens.refresh({bufnr = 0})
  end
end
})
-- trigger codelens refresh
vim.api.nvim_exec_autocmds('User', { pattern = 'LspAttached' })

