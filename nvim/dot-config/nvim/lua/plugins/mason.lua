return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    lazy = false,
    event = "BufReadPre",
    config = function()
        require("mason").setup({
            PATH = "append",
            ui = {
                border = "rounded",
                icons = {
                    package_installed = "✓",
                    package_pending = "➜",
                    package_uninstalled = "✗",
                },
            },

            pip = {
                upgrade_pip = true,
            },
        })
    end,
}
