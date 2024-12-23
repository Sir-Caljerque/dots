return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.5",
	lazy = "VeryLazy",
	dependencies = {
		"nvim-lua/plenary.nvim",
		"nvim-telescope/telescope-ui-select.nvim",
		"debugloop/telescope-undo.nvim",
		{
			"nvim-telescope/telescope-fzf-native.nvim",
			build = "make",
		},
	},
	config = function()
		require("telescope").setup({
			extensions = {
				["ui-select"] = {
					require("telescope.themes").get_dropdown({}),
				},
				fzf = {
					fuzzy = true, -- false will only do exact matching
					override_generic_sorter = true, -- override the generic sorter
					override_file_sorter = true, -- override the file sorter
					case_mode = "smart_case", -- or "ignore_case" or "respect_case"
				},
				persisted = {
					layout_config = { width = 0.55, height = 0.55 },
				},
			},
			pickers = {
				find_files = {
					hidden = true,
				},
				live_grep = {
					additional_args = function(opts)
						return { "--hidden" }
					end,
				},
			},
		})

		require("telescope").load_extension("fzf")
		require("telescope").load_extension("macros")
		require("telescope").load_extension("noice")
		require("telescope").load_extension("ui-select")
		require("telescope").load_extension("undo")
	end,
}
