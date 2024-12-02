return {
    {
        "hrsh7th/nvim-cmp",
        version = false,
        event = { "InsertEnter", "CmdlineEnter" },

        config = function()
            local cmp = require("cmp")
            local cmp_autopairs = require("nvim-autopairs.completion.cmp")
            local cmp_action = require("lsp-zero").cmp_action()
            local cmp_format = require("lsp-zero").cmp_format({ details = true })
            local luasnip = require("luasnip")
            local lspkind = require("lspkind")

            local has_words_before = function()
                unpack = unpack or table.unpack
                local line, col = unpack(vim.api.nvim_win_get_cursor(0))
                return col ~= 0
                    and vim.api.nvim_buf_get_lines(0, line - 1, line, true)[1]:sub(col, col):match("%s") == nil
            end

            require("luasnip/loaders/from_vscode").lazy_load()

            vim.opt.completeopt = "menu,menuone,noselect"

            cmp.setup({
                snippet = {
                    expand = function(args)
                        luasnip.lsp_expand(args.body)
                        -- vim.snippet.expand(args.body)
                    end,
                },
                window = {
                    -- completion = cmp.config.window.bordered(),
                    -- documentation = cmp.config.window.bordered(),
                },
                mapping = cmp.mapping.preset.insert({
                    ["<Tab>"] = cmp_action.luasnip_supertab(),
                    ["<S-Tab>"] = cmp_action.luasnip_shift_supertab(),
                    ["<C-p>"] = cmp_action.vim_snippet_prev(), -- cmp.mapping.select_prev_item(), -- previous suggestion
                    ["<C-n>"] = cmp_action.vim_snippet_next(), -- cmp.mapping.select_next_item(), -- next suggestion
                    ["<C-b>"] = cmp.mapping.scroll_docs(-4),
                    ["<C-f>"] = cmp.mapping.scroll_docs(4),
                    ["<C-Space>"] = cmp_action.toggle_completion(), -- cmp.mapping.complete(), -- show completion suggestions
                    ["<C-e>"] = cmp.mapping.abort(),                -- close completion window
                    ["<CR>"] = cmp.mapping(function(fallback)
                        if cmp.visible() then
                            if luasnip.expandable() then
                                luasnip.expand()
                            else
                                cmp.confirm({
                                    select = true,
                                })
                            end
                        else
                            fallback()
                        end
                    end),

                    -- ["<Tab>"] = cmp.mapping(function(fallback)
                    -- 	if cmp.visible() then
                    -- 		cmp.select_next_item()
                    -- 	elseif luasnip.locally_jumpable(1) then
                    -- 		luasnip.jump(1)
                    -- 	else
                    -- 		fallback()
                    -- 	end
                    -- end, { "i", "s" }),
                    --
                    -- ["<S-Tab>"] = cmp.mapping(function(fallback)
                    -- 	if cmp.visible() then
                    -- 		cmp.select_prev_item()
                    -- 	elseif luasnip.locally_jumpable(-1) then
                    -- 		luasnip.jump(-1)
                    -- 	else
                    -- 		fallback()
                    -- 	end
                    -- end, { "i", "s" }),
                }),
                -- sources for autocompletion
                sources = cmp.config.sources({
                    {
                        name = "nvim_lsp",
                        option = {
                            markdown_oxide = {
                                keyword_pattern = [[\(\k\| \|\/\|#\)\+]]
                            }
                        }
                    },                    -- lsp
                    -- { name = "nvim_lsp_signature_help" },
                    { name = "luasnip" }, -- snippets
                    { name = "buffer" },  -- text within current buffer
                    {
                        name = "async_path",
                        show_hidden_files_by_default = true,
                    }, -- file system paths
                    -- {
                    --     name = "spell",
                    --     option = {
                    --         keep_all_entries = false,
                    --         preselect_correct_word = false, -- true,
                    --     },
                    -- },
                }),
                -- configure lspkind for vs-code like icons
                formatting = cmp_format, -- {
                -- 	format = lspkind.cmp_format({
                -- 		maxwidth = 50,
                -- 		ellipsis_char = "...",
                -- 		show_labelDetails = true,
                -- 	}),
                -- },
                enabled = function()
                    -- disable completion in comments
                    local context = require("cmp.config.context")
                    -- keep command mode completion enabled when cursor is in a comment
                    if vim.api.nvim_get_mode().mode == "c" then
                        return true
                    else
                        return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
                    end
                end,
            })
            cmp.setup.cmdline("/", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = 'nvim_lsp_document_symbol' }
                }, {
                    { name = 'buffer' }
                })
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                        { name = 'path' }
                    },
                    {
                        {
                            name = 'cmdline',
                            option = {
                                ignore_cmds = { 'Man', '!' }
                            }
                        }
                    })
            })
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
            "hrsh7th/cmp-nvim-lsp-signature-help",  -- Testing
            "hrsh7th/cmp-nvim-lsp-document-symbol", -- Testing
            -- "hrsh7th/cmp-path",
            "FelipeLema/cmp-async-path",            -- !! but async
            "hrsh7th/cmp-cmdline",
            "onsails/lspkind.nvim",
            "L3MON4D3/LuaSnip",
            "saadparwaiz1/cmp_luasnip",
            -- "f3fora/cmp-spell",
            --optional
        },
    },
}
