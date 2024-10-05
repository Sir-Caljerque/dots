return {
	"nvim-lualine/lualine.nvim",
	dependencies = { "nvim-tree/nvim-web-devicons" },
	lazy = false,
	config = function()
        local tokyonight = require("lualine.themes.tokyonight-night")

        -- Change the background of lualine_c section for normal mode
        -- tokyonight.normal.c.bg = "#112233"

		require("lualine").setup({
			options = {
				icons_enabled = true,
				theme = tokyonight,
				component_separators = { left = "", right = "" },
				section_separators = { left = "", right = "" }, -- 
				disabled_filetypes = {
					statusline = {},
					winbar = {},
				},
				ignore_focus = {},
				always_divide_middle = true,
				globalstatus = true,
				refresh = {
					statusline = 1000,
					tabline = 1000,
					winbar = 1000,
				},
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = { { require("NeoComposer.ui").status_recording } }, -- 'branch', 'diff', 'diagnostics'
				lualine_c = { "diagnostics" }, -- 'filename'
				lualine_x = { "searchcount", "selectioncount" },
				lualine_y = { "fileformat", "filetype", "filesize" }, -- 'encoding', 'fileformat', 'filetype'
				lualine_z = { "progress", "location" },
			},
		})
	end,
}
