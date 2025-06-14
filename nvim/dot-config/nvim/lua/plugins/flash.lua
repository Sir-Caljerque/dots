return {
    "folke/flash.nvim",
    ---@type Flash.Config
    keys = {
        { "s",     mode = { "n", "x", "o" }, function() require("flash").jump() end,              desc = "Flash" },
        { "S",     mode = { "n", "x", "o" }, function() require("flash").treesitter() end,        desc = "Flash Treesitter" },
        { "r",     mode = "o",               function() require("flash").remote() end,            desc = "Remote Flash" },
        { "R",     mode = { "o", "x" },      function() require("flash").treesitter_search() end, desc = "Treesitter Search" },
        { "<c-s>", mode = { "c" },           function() require("flash").toggle() end,            desc = "Toggle Flash Search" },
    },
    config = function()
        require("flash").setup({
            search = {
                mode = "fuzzy",
                exclude = {
                    "neo-tree",
                    "sagaoutline",
                }
            },
            jump = {
                nohlsearch = true,
                autojump = false,
            },
            label = {
                rainbow = {
                    enabled = true,
                    shade = 8, -- 1-9
                },
            }
        })
    end,
}
