return {
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
        vim.keymap.set("n", "zm", require("ufo").closeFoldsWith)     -- closeAllFolds == closeFoldsWith(0)

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

        -- Customize folded lines:
        local handler = function(virtText, lnum, endLnum, width, truncate)
            local newVirtText = {}
            local suffix = (' 󰁂 %d '):format(endLnum - lnum)
            local sufWidth = vim.fn.strdisplaywidth(suffix)
            local targetWidth = width - sufWidth
            local curWidth = 0
            for _, chunk in ipairs(virtText) do
                local chunkText = chunk[1]
                local chunkWidth = vim.fn.strdisplaywidth(chunkText)
                if targetWidth > curWidth + chunkWidth then
                    table.insert(newVirtText, chunk)
                else
                    chunkText = truncate(chunkText, targetWidth - curWidth)
                    local hlGroup = chunk[2]
                    table.insert(newVirtText, { chunkText, hlGroup })
                    chunkWidth = vim.fn.strdisplaywidth(chunkText)
                    -- str width returned from truncate() may less than 2nd argument, need padding
                    if curWidth + chunkWidth < targetWidth then
                        suffix = suffix .. (' '):rep(targetWidth - curWidth - chunkWidth)
                    end
                    break
                end
                curWidth = curWidth + chunkWidth
            end
            table.insert(newVirtText, { suffix, 'MoreMsg' })
            return newVirtText
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
            close_fold_kinds_for_ft = {
                default = { "comment", "imports", "marker", "region" }
            },
            fold_virt_text_handler = handler,
        })
    end,
}
