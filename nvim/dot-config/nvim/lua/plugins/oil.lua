return {
    {
        "stevearc/oil.nvim",
        cmd = "Oil",
        -- Optional dependencies
        dependencies = { "nvim-tree/nvim-web-devicons" },
        config = function()
            require("oil").setup({
                columns = {
                    "icon",
                    "permissions",
                    -- "size",
                    "ctime",
                },
                constrain_cursor = "editable",
                view_options = {
                    show_hidden = false,
                },
                keymaps = {
                    ["<bs>"] = "actions.parent",
                    ["."] = "actions.toggle_hidden",
                    ["<gh>"] = "actions.open_cwd"
                }
            })
        end,
    },
}
