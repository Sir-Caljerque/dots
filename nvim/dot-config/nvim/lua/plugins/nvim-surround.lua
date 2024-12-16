return {
    "kylechui/nvim-surround",
    version = "*",     -- Use for stability; omit to use `main` branch for the latest features
    event = { "BufReadPre", "BufNewFile" },
    config = function()
        require("nvim-surround").setup({
            -- Configuration here, or leave empty to use defaults
            aliases = {
                ["a"] = ">",
                ["p"] = ")",
                ["B"] = "}",
                ["b"] = "]",
                ["q"] = { '"', "'", "`" },
                ["s"] = { "}", "]", ")", ">", '"', "'", "`" },
            },
            keymaps = {
                insert = "<C-g>s",           -- same as gs but on insert mode
                insert_line = "<C-g>S",      -- same as gS but on insert mode
                normal = "gs",               -- Inserts surround on motion (gs{motion}{char})
                normal_cur = "gss",          -- Inserts surround on whole line
                normal_line = "gS",          -- Same as non-capital counterparts but add delimiter on new lines
                normal_cur_line = "gSS",     -- Same as non-capital counterparts bnbut add delimiter on new lines
                visual = "S",
                visual_line = "gS",
                delete = "gd",
                change = "gc",          -- cs{target}{replacement}
                change_line = "gc",     -- Same as above but for whole line
            },
            highlight = {
                duration = 1,
            },
            move_cursor = "sticky",
        })
    end,
}
