local opts = {
  auto_install = true,
  ensure_installed = {
    "efm",
    "lua_ls",
    "clangd",
    "basedpyright",
    "pylsp",
    "ruff",
    "bashls",
    "gopls",
    "jsonls",
    "ts_ls",
    "emmet_ls",
    "markdown_oxide",
    "asm_lsp",
    "taplo",
    "jsonls",
    "zls",
    "dockerls",
  },
  automatic_installation = true,
}

return {
  "williamboman/mason-lspconfig.nvim",
  opts = opts,
  lazy = false,
  event = "BufReadPre",
  dependencies = "williamboman/mason.nvim",
}
