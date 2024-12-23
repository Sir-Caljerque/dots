return {
    "m4xshen/hardtime.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    opts = {
        disable_mouse = false,
        restriction_mode = "hint",
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
