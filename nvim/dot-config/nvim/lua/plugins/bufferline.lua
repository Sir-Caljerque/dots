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
                    -- separator_style = "slant",
				},
			})
		end,
	},
}
