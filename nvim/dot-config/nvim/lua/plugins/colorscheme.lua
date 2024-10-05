return {
	{
		"folke/tokyonight.nvim",
		lazy = false,
		priority = 1000,
		opts = {},
		config = function()
            require("tokyonight").setup({
                style = "night",
                transparent = true,
                terminal_colors = true,
                styles = {
                    comments = {},
                    keywords = {},
                    functions = {},
                    variables = {},
                    sidebars = "transparent",
                    floats = "transparent",
                },
                dim_inactive = true,
                lualine_bold = true,
                cache = true,
            })

			vim.cmd([[colorscheme tokyonight]])
		end,
	},
}
