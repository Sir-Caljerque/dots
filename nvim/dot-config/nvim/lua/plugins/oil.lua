return {
	{
		"stevearc/oil.nvim",
		event = "VeryLazy",
		-- Optional dependencies
		dependencies = { "nvim-tree/nvim-web-devicons" },
		config = function()
			require("oil").setup({
				columns = {
					"icon",
					"permissions",
					-- "size",
					"ctime",
				},
				constrain_cursor = "editable",
                view_options = {
                    show_hidden = false,
                }
			})
		end,
	},
}
