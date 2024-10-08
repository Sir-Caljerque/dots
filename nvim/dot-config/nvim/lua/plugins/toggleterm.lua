return {
    'akinsho/toggleterm.nvim',
    cmd = "ToggleTerm",
    version = "*",
    config = function()
        require("toggleterm").setup({
            hide_numbers = true,
            start_in_insert = true
        })
    end
}
