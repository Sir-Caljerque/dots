local km = vim.keymap

local M = {}

-- set keymaps on the active lsp server

M.on_attach = function(client, bufnr)
    vim.lsp.inlay_hint.enable(true, { bufnr = bufnr })

    km.set(
        "n",
        "<leader>wrn",
        "<cmd>Lspsaga project_replace<CR>",
        { noremap = true, silent = true, buffer = bufnr, desc = "wide smart rename" }
    )

    if client.name == "clangd" then
        km.set("n", "<leader>ch", "<cmd>ClangdSwitchSourceHeader<CR>", { desc = "Switch Source/Header" })
    end
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

return M
