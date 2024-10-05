return {
	{
		"folke/flash.nvim",
		event = "VeryLazy",
		---@type Flash.Config
		opts = {
			jump = {
				autojump = false,
				nohlsearch = true,
			},
			highlight = {
				-- show a backdrop with hl FlashBackdrop
				backdrop = true,
				-- Highlight the search matches
				matches = true,
				-- extmark priority
				priority = 5000,
				groups = {
					match = "FlashMatch",
					current = "FlashCurrent",
					backdrop = "FlashBackdrop",
					label = "FlashLabel",
				},
			},
      rainbow = {
        enabled = true,
        shade = 8, -- 1-9
      },
		},
	},
}
