return {
    "numToStr/Comment.nvim",
    event = { "BufReadpre", "BufNewFile" },
    config = function()
        require("Comment").setup({
            mappings = {
                basic = false,
            }
        })
    end
}
