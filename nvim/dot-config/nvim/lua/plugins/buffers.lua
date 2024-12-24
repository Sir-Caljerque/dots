return {
	{
		"akinsho/bufferline.nvim",
		-- lazy = false,
		event = { "BufReadpre", "BufNewFile" },
		version = "*",
		dependencies = "nvim-tree/nvim-web-devicons",
		config = function()
			local bufferline = require("bufferline")
			bufferline.setup({
				options = {
					hover = {
						enabled = true,
					},
					separator_style = "thick",
				},
			})
		end,
	},
	{
		"leath-dub/snipe.nvim",
		keys = {
			{
				"gb",
				function()
					require("snipe").open_buffer_menu()
				end,
				desc = "Open Snipe buffer menu",
			},
		},
		opts = {
			ui = {
				open_win_override = {
					border = "rounded",
				},
				text_align = "file-first",
			},
		},
	},
}
