local opt = vim.opt

-- Tabs / Indentations
opt.tabstop = 4
opt.shiftwidth = 4
opt.softtabstop = 4
opt.expandtab = true
opt.smartindent = true
opt.wrap = true -- false

-- Search
opt.incsearch = true
opt.ignorecase = true
opt.smartcase = true
opt.hlsearch = false

-- Appearance
opt.number = true
opt.relativenumber = true -- Relative line numbers
opt.termguicolors = true
opt.colorcolumn = "100"
opt.signcolumn = "yes"
opt.cmdheight = 1
opt.scrolloff = 10
opt.completeopt = "menuone,noinsert,noselect"

-- Fold opts
vim.o.foldcolumn = "auto" -- '0' is not bad
vim.o.foldlevel = 99      -- Using ufo provider need a large value, feel free to decrease the value
vim.o.foldlevelstart = 99
vim.o.foldenable = true
vim.o.fillchars = [[fold:│,foldopen:,foldclose:,foldsep:,eob: ]]

-- Behavior
opt.hidden = true
opt.confirm = true
opt.errorbells = false
opt.swapfile = false
opt.backup = false
opt.undodir = vim.fn.expand("$XDG_CACHE_HOME/vim/undodir")
opt.undofile = true
opt.backspace = "indent,eol,start"
opt.splitright = true
opt.splitbelow = true
opt.autochdir = false --true
-- opt.iskeyword:append("-")
opt.mouse:append("a")
opt.clipboard:append("unnamedplus")
opt.modifiable = true
opt.encoding = "UTF-8"
opt.autowrite = true
opt.cursorline = true -- Enable highlighting of the current line
opt.smoothscroll = true
opt.laststatus = 3
opt.splitkeep = "screen"
opt.spell = true
opt.spelllang = { "en_us" }
