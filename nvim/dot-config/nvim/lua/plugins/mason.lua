return {
    "williamboman/mason.nvim",
    cmd = "Mason",
    lazy = false,
    event = "BufReadPre",
    opts = {
        PATH = "append",
        ui = {
            icons = {
                package_installed = "✓",
                package_pending = "➜",
                package_uninstalled = "✗",
            },
        },
    },
}
