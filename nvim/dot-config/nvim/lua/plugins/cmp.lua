return {
	"saghen/blink.cmp",
	-- optional: provides snippets for the snippet source
	dependencies = { "rafamadriz/friendly-snippets" }, -- "mikavilpas/blink-ripgrep.nvim"

	-- use a release tag to download a prebuilt bin
	version = "1.*",
	-- use a release tag to download pre-built binaries
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
			-- "enter" keymap
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

		appearance = {
			nerd_font_variant = "normal",
		},

		completion = {
			keyword = {
				range = "full",
			},

			-- completion.trigger = {} not needed as all of its defaults are true

			list = {
				selection = {
					preselect = false,
					auto_insert = false,
				},
			},

			accept = {
				create_undo_point = true,
				auto_brackets = {
					enabled = true, -- Disable this if interfering with autopairs
				},
			},

			menu = {
				auto_show = true,
				draw = {
					treesitter = { "lsp" },
					columns = { { "kind_icon", "source_name" }, { "label", "label_description", gap = 1 } },
					-- source_name = {
					--     width = { max = 5 },
					--     text = function(ctx)
					--         if ctx.source_name == "Snippets" then
					--             return "Snip"
					--         elseif ctx.source_name == "Buffer" then
					--             return "Buff"
					--         else
					--             return ctx.source_name
					--         end
					--     end,
					-- },
				},
			},

			documentation = {
				auto_show = true,
			},

			ghost_text = {
				enabled = true,
			},
		},

		-- experimental signature help support
		signature = {
			enabled = true,
			window = { border = "rounded" },
		},

		-- default list of enabled providers defined so that you can extend it
		-- elsewhere in your config, without redefining it, via `opts_extend`
		sources = {
			-- optionally disable cmdline completions
			default = function(ctx)
				local default_sources = { "lsp", "snippets", "path", "buffer" }
				if vim.treesitter and type(vim.treesitter.get_node) == "fucntion" then
					local node = vim.treesitter.get_node()
					if
						node
						and vim.tbl_contains({
							"comment",
							"comment_content",
							"line_comment",
							"block_comment",
							"string",
							"string_content",
						}, node:type())
					then
						return { "buffer", "path" }
					end
				end
				return { "lsp", "snippets", "path", "buffer" }
			end,

			providers = {
				cmdline = {
					min_keyword_length = function(ctx)
						-- when typing a command, only show when the keyword is 3 characters or longer
						if ctx.mode == "cmdline" and string.find(ctx.line, " ") == nil then
							return 3
						end
						return 0
					end,
				},
			},
		},

		cmdline = {
			enabled = true,
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = true } },
		},

		term = {
			enabled = true,
			keymap = { preset = "inherit" },
			completion = { menu = { auto_show = true } },
		},
	},
	-- allows extending the providers array elsewhere in your config
	-- without having to redefine it
	opts_extend = { "sources.default" },
}
