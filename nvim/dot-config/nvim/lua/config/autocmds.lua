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

