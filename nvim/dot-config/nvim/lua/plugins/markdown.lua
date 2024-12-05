return {
    {
        "3rd/image.nvim",
        build = false,
        ft = { "markdown" },
        config = function()
            require("image").setup({
                backend = "kitty",
                processor = "magick_cli",
            })
        end,
    },
    {
        "MeanderingProgrammer/render-markdown.nvim",
        dependencies = { 'nvim-treesitter/nvim-treesitter', 'nvim-tree/nvim-web-devicons' },
        ft = { "markdown" },
        config = function()
            require("render-markdown").setup({
                indent = {
                    enabled = true,
                }
            })
        end
    },
    {
        "epwalsh/obsidian.nvim",
        dependencies = {
            "nvim-lua/plenary.nvim",
        },
        version = "*", -- recommended, use latest release instead of latest commit
        ft = "markdown",
        config = function()
            require("obsidian").setup({
                ui = { enable = false },
                workspaces = {
                    {
                        name = "Cybersec",
                        path = "~/Certs/Cybersecurity training"
                    },
                    {
                        name = "AWS",
                        path = "~/Certs/AWS"
                    },
                    {
                        name = "Sec+",
                        path = "~/Certs/Security+"
                    }
                },
                attachments = {
                    img_folder = "assets/imgs"
                }
            })
        end
    }
}
