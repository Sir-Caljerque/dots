return {
	"m4xshen/hardtime.nvim",
	dependencies = { "MunifTanjim/nui.nvim" },
	opts = {
		enabled = true,
		disable_mouse = false,
		restriction_mode = "block", -- block or hint
		restricted_keys = {
			["h"] = {},
			["j"] = {},
			["k"] = {},
			["l"] = {},
			["-"] = {},
			["+"] = {},
		},
		disabled_keys = {
			["<Up>"] = { "n", "v" },
			["<Down>"] = { "n", "v" },
			["<Left>"] = { "n", "v" },
			["<Right>"] = { "n", "v" },
		},
	},
}
