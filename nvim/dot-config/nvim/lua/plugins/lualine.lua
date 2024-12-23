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
				theme = tokyonight,
				globalstatus = true,
			},
			sections = {
				lualine_a = { "mode" },
				lualine_b = {
					{
						function()
							local lsps = vim.lsp.get_clients({ bufnr = vim.fn.bufnr() })
							local icon = require("nvim-web-devicons").get_icon_by_filetype(
								vim.api.nvim_buf_get_option(0, "filetype")
							)

							if lsps and #lsps > 0 then
								local names = {}
								for _, lsp in ipairs(lsps) do
									if lsp.name ~= "efm" then
										table.insert(names, lsp.name)
									end
								end
								return string.format("%s %s", table.concat(names, ", "), icon)
							else
								return icon or ""
							end
						end,
						on_click = function()
							vim.api.nvim_command("LspInfo")
						end,
						color = function()
							local _, color = require("nvim-web-devicons").get_icon_cterm_color_by_filetype(
								vim.api.nvim_buf_get_option(0, "filetype")
							)
							return { fg = color }
						end,
					},
				}, -- 'branch', 'diff', 'diagnostics'
				lualine_c = {
					{ require("NeoComposer.ui").status_recording },
					{ "diagnostics", update_in_insert = true },
				}, -- 'filename'
				lualine_x = {
					{ require("noice").api.status.search.get, cond = require("noice").api.status.search.has },
					"selectioncount",
				},
				lualine_y = { "fileformat", "filetype", "filesize" }, -- 'encoding', 'fileformat', 'filetype'
				lualine_z = { "progress", "location" },
			},
		})
	end,
}
