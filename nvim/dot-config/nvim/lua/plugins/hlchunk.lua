return {
    "shellRaining/hlchunk.nvim",
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        local colors = require("tokyonight.colors").setup({ style = "night" })
        require("hlchunk").setup({
            chunk = {
                enable = true,
                use_treesitter = true,
                -- details about support_filetypes and exclude_filetypes in
                -- https://github.com/shellRaining/hlchunk.nvim/blob/main/lua/hlchunk/utils/filetype.lua
                chars = {
                    horizontal_line = "─",
                    vertical_line = "│",
                    left_top = "╭",
                    left_bottom = "╰",
                    right_arrow = "─",
                },
                style = {
                    { fg = colors.purple }, -- this fg is used to highlight wrong chunk
                    { fg = colors.red },
                },
                textobject = "",
                max_file_size = 1024 * 1024,
                error_sign = true,
            },
            indent = {
                enable = true,
                use_treesitter = true,
                chars = {
                    "│",
                },
                style = {
                    { fg = vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui") },
                },
            },

            line_num = {
                enable = true,
                use_treesitter = true,
                style = "#a50b5e",
            },

            blank = {
                enable = true,
                use_treesitter = true,
                chars = {
                    ".",
                },
                style = {
                    vim.fn.synIDattr(vim.fn.synIDtrans(vim.fn.hlID("Whitespace")), "fg", "gui"),
                },
            },
        })
    end,
}
