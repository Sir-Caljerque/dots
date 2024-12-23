return {
	"nvimdev/lspsaga.nvim",
	event = "LspAttach",
	opts = {
		symbols_in_winbar = {
			enable = true,
		},
		code_action = {
			show_server_name = true,
		},
		move_in_saga = { prev = "<C-p>", next = "<C-n>" },
		finder_action_keys = {
			open = "<CR>",
		},
		-- use enter to open file with definition preview
		definition = {
			keys = {
				edit = "<C-e>",
				vsplit = "<C-c>v",
				split = "<C-c>h",
			},
		},
		diagnostic = {
			extend_relatedInformation = true,
		},
		finder = {
			default = "def+tyd+ref+imp",
		},
		outline = {
			win_position = "left",
			layout = "float",
			toggle_or_jump = "a",
			jump = "x",
		},
		lightbulb = {
			enable = false,
		},
		keys = {
			toggle_or_jump = "<A-o>",
			quit = "<A-O>",
			-- jump = '', -- idk what to set this to
		},
		rename = {
			in_select = false,
			auto_save = true,
		},
	},
	dependencies = {
		"nvim-treesitter/nvim-treesitter",
		"nvim-tree/nvim-web-devicons",
	},
}
