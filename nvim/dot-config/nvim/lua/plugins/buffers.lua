return {
	{
		"akinsho/bufferline.nvim",
		lazy = false,
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
}
