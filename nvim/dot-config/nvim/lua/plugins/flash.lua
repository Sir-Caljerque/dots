return {
    "folke/flash.nvim",
    event = { "BufReadPre", "BufNewFile" },
    ---@type Flash.Config
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
