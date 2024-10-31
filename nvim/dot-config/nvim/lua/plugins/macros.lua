return {
  "ecthelionvi/NeoComposer.nvim",
  event = "VeryLazy",
  dependencies = { "kkharji/sqlite.lua" },
  opts = {
    notify = false,
    delay_timer = 150,
    queue_most_recent = false,
    window = {
      width = 60,
      height = 10,
      border = "rounded",
      winhl = {
        Normal = "ComposerNormal",
      },
    },
    colors = {
      bg = "#3B4261",
      fg = "#3B4261",
      -- fg = "#c0caf5",
      red = "#f7768e",
      blue = "#7aa2f7",
      green = "#9ece6a",
    },
    keymaps = {
      play_macro = "Q",
      yank_macro = "yq",
      stop_macro = "cq",
      toggle_record = "q",
      cycle_next = "<c-n>",
      cycle_prev = "<c-p>",
      toggle_macro_menu = "<C-q>",
    },
  },
}
