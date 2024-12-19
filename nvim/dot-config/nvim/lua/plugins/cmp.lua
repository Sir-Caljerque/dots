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
                enabled = false,
                -- enabled = function()
                --     -- disable completion in comments
                --     local context = require("cmp.config.context")
                --     -- keep command mode completion enabled when cursor is in a comment
                --     if vim.api.nvim_get_mode().mode == "c" then
                --         return true
                --     else
                --         return not context.in_treesitter_capture("comment") and not context.in_syntax_group("Comment")
                --     end
                -- end,
            })
            cmp.setup.cmdline("/", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                    { name = "nvim_lsp_document_symbol" }
                }, {
                    { name = "buffer" }
                })
            })
            cmp.setup.cmdline(":", {
                mapping = cmp.mapping.preset.cmdline(),
                sources = cmp.config.sources({
                        { name = "path" }
                    },
                    {
                        {
                            name = "cmdline",
                            option = {
                                ignore_cmds = { "Man", "!" }
                            }
                        }
                    })
            })
            cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
        end,
        dependencies = {
            "hrsh7th/cmp-nvim-lsp",
            "hrsh7th/cmp-buffer",
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
    {
        "saghen/blink.cmp",
        -- optional: provides snippets for the snippet source
        dependencies = { { "L3MON4D3/LuaSnip", version = "v2.*" }, "rafamadriz/friendly-snippets" },

        -- use a release tag to download pre-built binaries
        version = "v0.*",
        -- AND/OR build from source, requires nightly: https://rust-lang.github.io/rustup/concepts/channels.html#working-with-nightly-rust
        -- build = "cargo build --release",
        -- If you use nix, you can build from source using latest nightly rust with:
        -- build = "nix run .#build-plugin",

        -- require("luasnip.loaders.from_vscode").lazy_load(),

        opts = {
            -- "default" for mappings similar to built-in completion
            -- "super-tab" for mappings similar to vscode (tab to accept, arrow keys to navigate)
            -- "enter" for mappings similar to "super-tab" but with "enter" to accept
            -- see the "default configuration" section below for full documentation on how to define
            -- your own keymap.
            keymap = {
                -- When specifying "preset" in the keymap table, the custom key mappings are merged with the preset,
                -- and any conflicting keys will overwrite the preset mappings.
                -- The "fallback" command will run the next non blink keymap.
                --
                -- Example:
                --
                -- keymap = {
                --   preset = "default",
                --   ["<Up>"] = { "select_prev", "fallback" },
                --   ["<Down>"] = { "select_next", "fallback" },
                --
                --   -- disable a keymap from the preset
                --   ["<C-e>"] = {},
                --
                --   -- show with a list of providers
                --   ["<C-space>"] = { function(cmp) cmp.show({ providers = { "snippets" } }) end },
                --
                --   -- note that your function will often be run in a "fast event" where most vim.api functions will throw an error
                --   -- you may want to wrap your function in `vim.schedule` or use `vim.schedule_wrap`
                --   ["<C-space>"] = { function(cmp) vim.schedule(function() your_behavior end) },
                --
                --   -- optionally, define different keymaps for cmdline
                --   cmdline = {
                --     preset = "super-tab"
                --   }
                -- }
                --
                -- When defining your own keymaps without a preset, no keybinds will be assigned automatically.
                --
                -- Available commands:
                --   show, hide, cancel, accept, select_and_accept, select_prev, select_next, show_documentation, hide_documentation,
                --   scroll_documentation_up, scroll_documentation_down, snippet_forward, snippet_backward, fallback
                --
                -- "default" keymap
                --   ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
                --   ["<C-e>"] = { "hide" },
                --   ["<C-y>"] = { "select_and_accept" },
                --
                --   ["<C-p>"] = { "select_prev", "fallback" },
                --   ["<C-n>"] = { "select_next", "fallback" },
                --
                --   ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                --   ["<C-f>"] = { "scroll_documentation_down", "fallback" },
                --
                --   ["<Tab>"] = { "snippet_forward", "fallback" },
                --   ["<S-Tab>"] = { "snippet_backward", "fallback" },
                --
                -- "super-tab" keymap
                --   you may want to set `completion.trigger.show_in_snippet = false`
                --   or use `completion.list.selection = "manual" | "auto_insert"`
                --
                --   ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
                --   ["<C-e>"] = { "hide", "fallback" },
                --
                --   ["<Tab>"] = {
                --     function(cmp)
                --       if cmp.snippet_active() then return cmp.accept()
                --       else return cmp.select_and_accept() end
                --     end,
                --     "snippet_forward",
                --     "fallback"
                --   },
                --   ["<S-Tab>"] = { "snippet_backward", "fallback" },
                --
                --   ["<Up>"] = { "select_prev", "fallback" },
                --   ["<Down>"] = { "select_next", "fallback" },
                --   ["<C-p>"] = { "select_prev", "fallback" },
                --   ["<C-n>"] = { "select_next", "fallback" },
                --
                --   ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                --   ["<C-f>"] = { "scroll_documentation_down", "fallback" },
                --
                -- "enter" keymap
                --   you may want to set `completion.list.selection = "manual" | "auto_insert"`
                --
                --   ["<C-space>"] = { "show", "show_documentation", "hide_documentation" },
                --   ["<C-e>"] = { "hide", "fallback" },
                --   ["<CR>"] = { "accept", "fallback" },
                --
                --   ["<Tab>"] = { "snippet_forward", "fallback" },
                --   ["<S-Tab>"] = { "snippet_backward", "fallback" },
                --
                --   ["<Up>"] = { "select_prev", "fallback" },
                --   ["<Down>"] = { "select_next", "fallback" },
                --   ["<C-p>"] = { "select_prev", "fallback" },
                --   ["<C-n>"] = { "select_next", "fallback" },
                --
                --   ["<C-b>"] = { "scroll_documentation_up", "fallback" },
                --   ["<C-f>"] = { "scroll_documentation_down", "fallback" },
                preset = "enter",
                ["<Tab>"] = { "select_next", "fallback" },
                ["<S-Tab>"] = { "select_prev", "fallback" },
                ["<C-n>"] = { "snippet_forward", "fallback" },
                ["<C-p>"] = { "snippet_backward", "fallback" },
                ["<Up>"] = { "fallback" },
                ["<Down>"] = { "fallback" },
            },

            completion = {
                list = {
                    selection = "manual",
                },
                accept = {
                    create_undo_point = true,
                    auto_brackets = {
                        enabled = true, -- Disable this if interfering with autopairs
                    }
                },

                menu = {
                    enabled = true,
                    border = "rounded",
                    draw = {
                        treesitter = { "lsp" },
                        columns = { { "kind_icon", "source_name" }, { "label", "label_description", gap = 1 } },
                        components = {
                            source_name = {
                                width = { max = 5 },
                                text = function(ctx)
                                    if ctx.source_name == "Snippets" then
                                        return "Snip"
                                    elseif ctx.source_name == Buffer then
                                        return "Buff"
                                    else
                                        return ctx.source_name
                                    end
                                end,
                                highlight = 'BlinkCmpSource',
                            },
                        }
                    },
                },

                documentation = {
                    auto_show = true,
                    auto_show_delay_ms = 50,
                },

                ghost_text = {
                    enabled = true
                },
            },

            -- experimental signature help support
            signature = {
                enabled = true,
            },

            snippets = {
                -- THIS IS FOR LUASNIP, ENABLE IF NORMAL SNIPPETS SUCK
                --     expand = function(snippet) require("luasnip").lsp_expand(snippet) end,
                --     active = function(filter)
                --         if filter and filter.direction then
                --             return require("luasnip").jumpable(filter.direction)
                --         end
                --         return require("luasnip").in_snippet()
                --     end,
                --     jump = function(direction) require("luasnip").jump(direction) end,
                --
                -- Function to use when expanding LSP provided snippets
                expand = function(snippet) vim.snippet.expand(snippet) end,
                -- Function to use when checking if a snippet is active
                active = function(filter) return vim.snippet.active(filter) end,
                -- Function to use when jumping between tab stops in a snippet, where direction can be negative or positive
                jump = function(direction) vim.snippet.jump(direction) end,
            },

            -- default list of enabled providers defined so that you can extend it
            -- elsewhere in your config, without redefining it, via `opts_extend`
            sources = {
                -- optionally disable cmdline completions
                default = function(ctx)
                    local node = vim.treesitter.get_node()
                    if node and vim.tbl_contains({ "comment", "line_comment", "block_comment", "string", "string_content" }, node:type()) then
                        return { "buffer", "path" }
                    else
                        return { "lsp", "luasnip", "snippets", "path", "buffer" }
                    end
                end,

                cmdline = function()
                    local type = vim.fn.getcmdtype()
                    -- Search forward and backward
                    if type == "/" or type == "?" then return { "buffer" } end
                    -- Commands
                    if type == ":" then return { "cmdline" } end
                    return {}
                end,

                providers = {
                    snippets = {
                        name = "Snippets",
                        module = "blink.cmp.sources.snippets",
                        opts = {
                            friendly_snippets = true,
                            search_paths = { vim.fn.stdpath("config") .. "/snippets" },
                            global_snippets = { "all" },
                            extended_filetypes = {},
                            ignored_filetypes = {},
                            get_filetype = function(context)
                                return vim.bo.filetype
                            end
                        }

                        --- Example usage for disabling the snippet provider after pressing trigger characters (i.e. ".")
                        -- enabled = function(ctx)
                        --   return ctx ~= nil and ctx.trigger.kind == vim.lsp.protocol.CompletionTriggerKind.TriggerCharacter
                        -- end,
                    },
                    luasnip = {
                        name = "Luasnip",
                        module = "blink.cmp.sources.luasnip",
                        opts = {
                            -- Whether to use show_condition for filtering snippets
                            use_show_condition = true,
                            -- Whether to show autosnippets in the completion list
                            show_autosnippets = true,
                        }
                    },
                }
            },

            appearance = {
                -- Sets the fallback highlight groups to nvim-cmp"s highlight groups
                -- Useful for when your theme doesn"t support blink.cmp
                -- will be removed in a future release
                use_nvim_cmp_as_default = true,
                -- Set to "mono" for "Nerd Font Mono" or "normal" for "Nerd Font"
                -- Adjusts spacing to ensure icons are aligned
                nerd_font_variant = "normal",
                kind_icons = {
                    Text = "󰉿",
                    Method = "󰊕",
                    Function = "󰊕",
                    Constructor = "󰒓",

                    Field = "󰜢",
                    Variable = "󰆦",
                    Property = "󰖷",

                    Class = "󱡠",
                    Interface = "󱡠",
                    Struct = "󱡠",
                    Module = "󰅩",

                    Unit = "󰪚",
                    Value = "󰦨",
                    Enum = "󰦨",
                    EnumMember = "󰦨",

                    Keyword = "󰻾",
                    Constant = "󰏿",

                    Snippet = "󱄽",
                    Color = "󰏘",
                    File = "󰈔",
                    Reference = "󰬲",
                    Folder = "󰉋",
                    Event = "󱐋",
                    Operator = "󰪚",
                    TypeParameter = "󰬛",
                },
            },
        },
        -- allows extending the providers array elsewhere in your config
        -- without having to redefine it
        opts_extend = { "sources.default" }
    }
}
