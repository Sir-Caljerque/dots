return {
    -- {
    -- 	"nvim-telescope/telescope-ui-select.nvim",
    -- },
    {
        "nvim-telescope/telescope.nvim",
        tag = "0.1.5",
        lazy = false,
        dependencies = {
            "nvim-lua/plenary.nvim",
            "nvim-telescope/telescope-ui-select.nvim",
            "debugloop/telescope-undo.nvim",
            "nvim-telescope/telescope-file-browser.nvim",
        },
        config = function()
            require("telescope").setup({
                extensions = {
                    ["ui-select"] = {
                        require("telescope.themes").get_dropdown({}),
                    },
                    persisted = {
                        layout_config = { width = 0.55, height = 0.55 },
                    },
                    file_browser = {
                        hijack_netrw = false, --true,
                    },
                },
                pickers = {
                    find_files = {
                        hidden = true,
                    },
                    live_grep = {
                        additional_args = function(opts)
                            return { "--hidden" }
                        end,
                    },
                },
            })

            require("telescope").load_extension("ui-select")
            require("telescope").load_extension("undo")
            require("telescope").load_extension("file_browser")
            require("telescope").load_extension("macros")
            require("telescope").load_extension("notify")
            require("telescope").load_extension("noice")
        end,
    },
}
