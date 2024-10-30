return {
  {
    "kevinhwang91/nvim-ufo",
    -- enabled = false,
    event = { "BufRead", "BufNewFile" },
    dependencies = { "kevinhwang91/promise-async" },
    config = function()
      -- vim.o.foldcolumn = "1" -- '0' is not bad
      -- vim.o.foldlevel = 99 -- Using ufo provider need a large value, feel free to decrease the value
      -- vim.o.foldlevelstart = 99
      -- vim.o.foldenable = true

      vim.keymap.set("n", "zR", require("ufo").openAllFolds, { desc = "Open all folds" })
      vim.keymap.set("n", "zM", require("ufo").closeAllFolds, { desc = "Close all folds" })
      vim.keymap.set("n", "zr", require("ufo").openFoldsExceptKinds)
      vim.keymap.set("n", "zm", require("ufo").closeFoldsWith) -- closeAllFolds == closeFoldsWith(0)
      vim.keymap.set("n", "zK", function()
        local winid = require("ufo").peekFoldedLinesUnderCursor()
        if not winid then
          vim.lsp.buf.hover()
        end
      end, { desc = "Peek Fold" })

      -- ### nvim lsp as LSP client
      -- Tell the server the capability of foldingRange
      local capabilities = vim.lsp.protocol.make_client_capabilities()
      capabilities.textDocument.foldingRange = {
        dynamicRegistration = false,
        lineFoldingOnly = true
      }
      local language_servers = require("lspconfig").util.available_servers()
      for _, ls in ipairs(language_servers) do
        require("lspconfig")[ls].setup({
          capabilities = capabilities
        })
      end

      -- ### Use treesitter as main provider (If LSP doesnt work/returns error)
      -- IMPORTANT: uncomment inside setup to enable treesitter, leave balnk for LSP
      -- ufo uses the same query files for folding (queries/<lang>/folds.scm)
      -- performance and stability are better than `foldmethod=nvim_treesitter#foldexpr()`
      require("ufo").setup({
        provider_selector = function(bufnr, filetype, buftype)
          if filetype == 'markdown' then
            return { "treesitter", "lsp" }
          end
          return nil
        end,
      })

      -- Option 2: nvim lsp as LSP client
      -- Tell the server the capability of foldingRange,
      -- Neovim hasn't added foldingRange to default capabilities, users must add it manually
      -- local capabilities = vim.lsp.protocol.make_client_capabilities()
      -- capabilities.textDocument.foldingRange = {
      -- 	dynamicRegistration = false,
      -- 	lineFoldingOnly = true,
      -- }
      -- local language_servers = require("lspconfig").util.available_servers() -- or list servers manually like {'gopls', 'clangd'}
      -- for _, ls in ipairs(language_servers) do
      -- 	require("lspconfig")[ls].setup({
      -- 		capabilities = capabilities,
      -- 		-- you can add other fields for setting up lsp server in this table
      -- 	})
      -- end
      -- require("ufo").setup()
    end,
  },
}
