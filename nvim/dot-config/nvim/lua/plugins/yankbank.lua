return {
	{
		"ptdewey/yankbank-nvim",
		event = { "BufReadPre", "BufNewFile" },
		config = function()
			require("yankbank").setup({
				max_entries = 5,
				sep = "|--------------->--------------->---------------|",
				num_behavior = "jump",
			})
		end,
	},
}
