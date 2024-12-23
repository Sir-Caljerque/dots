local km = vim.keymap
local wk = require("which-key")
local prefix = { prefix = "<leader>", noremap = true } -- For wk prefix
local nkm = vim.api.nvim_set_keymap

-- Clear search with <esc>
km.set({ "i", "n" }, "<S-esc>", "<cmd>noh<cr><esc>", { desc = "Escape and Clear hlsearch" })

-- better up/down
km.set({ "n", "x" }, "j", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
km.set({ "n", "x" }, "<Down>", "v:count == 0 ? 'gj' : 'j'", { expr = true, silent = true })
km.set({ "n", "x" }, "k", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })
km.set({ "n", "x" }, "<Up>", "v:count == 0 ? 'gk' : 'k'", { expr = true, silent = true })

-- Move Lines
km.set("n", "<A-j>", "<cmd>m .+1<cr>==", { desc = "Move Down" })
km.set("n", "<A-k>", "<cmd>m .-2<cr>==", { desc = "Move Up" })
km.set("i", "<A-j>", "<esc><cmd>m .+1<cr>==gi", { desc = "Move Down" })
km.set("i", "<A-k>", "<esc><cmd>m .-2<cr>==gi", { desc = "Move Up" })
km.set("v", "<A-j>", ":m '>+1<cr>gv=gv", { desc = "Move Down" })
km.set("v", "<A-k>", ":m '<-2<cr>gv=gv", { desc = "Move Up" })

-- Resize window using <ctrl> arrow keys
km.set("n", "<C-w>", "<cmd>resize +2<cr>", { desc = "Increase Window Height" })
km.set("n", "<C-s>", "<cmd>resize -2<cr>", { desc = "Decrease Window Height" })
km.set("n", "<C-a>", "<cmd>vertical resize -2<cr>", { desc = "Decrease Window Width" })
km.set("n", "<C-d>", "<cmd>vertical resize +2<cr>", { desc = "Increase Window Width" })

-- Pane Navigation
km.set("n", "<C-h>", "<C-w>h", { desc = "navigate left window" }) -- Navigate Left
km.set("n", "<C-j>", "<C-w>j", { desc = "navigate down window" }) -- Navigate Down
km.set("n", "<C-k>", "<C-w>k", { desc = "navigate up window" }) -- Navigate Up
km.set("n", "<C-l>", "<C-w>l", { desc = "navigate right window" }) -- Navigate Right

-- buffers
km.set("n", "<S-h>", "<cmd>bprevious<cr>", { desc = "Prev Buffer" })
km.set("n", "<S-l>", "<cmd>bnext<cr>", { desc = "Next Buffer" })

-- neo-tree
km.set("n", "<A-t>", ":Neotree filesystem reveal right toggle<CR>", { noremap = true, silent = true })
km.set("n", "<A-d>", ":Neotree focus<CR>", { noremap = true, silent = true })
-- km.set("n", "<A-t>", ":CHADopen<CR>", { noremap = true, silent = true })

-- Indenting
km.set("v", "<", "<gv", { desc = "left shift indent" }) -- Shift Indentation to Left
km.set("v", ">", ">gv", { desc = "right shift indent" }) -- Shift Indentation to Right

-- Comments
nkm("n", "<C-/>", "gcc", { noremap = false })
nkm("v", "<C-/>", "gcc", { noremap = false })
-- Remap hjkl to neoi for Workman layout
-- nkm("n", "n", "h", { noremap = true, silent = true })
-- nkm("n", "e", "j", { noremap = true, silent = true })
-- nkm("n", "o", "k", { noremap = true, silent = true })
-- nkm("n", "i", "l", { noremap = true, silent = true })
-- nkm("v", "n", "h", { noremap = true, silent = true })
-- -- Normal mode
-- nkm("v", "e", "j", { noremap = true, silent = true })
-- nkm("v", "o", "k", { noremap = true, silent = true })
-- nkm("v", "i", "l", { noremap = true, silent = true })
-- -- Insert mode
-- nkm("i", "<C-n>", "<Left>", { noremap = true, silent = true })
-- nkm("i", "<C-e>", "<Down>", { noremap = true, silent = true })
-- nkm("i", "<C-o>", "<Up>", { noremap = true, silent = true })
-- nkm("i", "<C-i>", "<Right>", { noremap = true, silent = true })

-- Floating term secondary keys
km.set({ "n", "v", "i", "o", "x", "t" }, "<A-\\>", function()
	Snacks.terminal.open()
end, { desc = "Toggle bottom term" })
km.set({ "n", "v", "i", "o", "x", "t" }, "<C-\\>", "<cmd>Lspsaga term_toggle<CR>", { desc = "Toggle floating term" })

local duck = require("duck") -- for `duck` plugin keymap
local builtin = require("telescope.builtin")

wk.add({
	-- Code group - <leader>{cf,cF,cdc,cdl}
	{
		mode = { "n", "v" },
		{ "<leader>c", group = "+Code" },
		{
			"<leader>cA",
			"<cmd>Lspsaga code_action<CR>",
			desc = "Actions extra",
			silent = true,
		},
		{
			"<leader>ca",
			function()
				vim.lsp.buf.code_action()
			end,
			desc = "Actions",
			silent = true,
		},
		{
			"<leader>cf",
			function()
				vim.lsp.buf.format({ async = true })
			end,
			desc = "Format",
			silent = true,
		},
		{ "<leader>cd", group = "+Diagnostics" },
		{
			"<leader>cdc",
			"<cmd>Lspsaga show_cursor_diagnostics<CR>",
			desc = "Cursor diagnostics",
			silent = true,
			noremap = true,
		},
		{
			"<leader>cdl",
			"<cmd>Lspsaga show_line_diagnostics<CR>",
			desc = "Line diagnostics",
			silent = true,
			noremap = true,
		},
		{
			"<leader>cdw",
			"<cmd>Lspsaga show_workspace_diagnostics<CR>",
			desc = "Workspace diagnostics",
			silent = true,
			noremap = true,
		},
		{
			"<leader>rn",
			"<cmd>Lspsaga rename<CR>",
			desc = "Rename",
			silent = true,
			noremap = true,
		},
		{
			"<leader>gd",
			"<cmd>Lspsaga peek_definition<CR>",
			desc = "Peek definition",
			silent = true,
			noremap = true,
		},
		{
			"<leader>gt",
			"<cmd>Lspsaga peek_type_definition<CR>",
			desc = "Peek type definition",
			silent = true,
			noremap = true,
		},
		{
			"<S-k>",
			"<cmd>Lspsaga hover_doc<CR>",
			desc = "Hover documentation",
			silent = true,
			noremap = true,
		},
		{
			"<A-n>",
			"<cmd>Lspsaga diagnostic_jump_next<CR>",
			desc = "Jump to next diagnostic",
			silent = true,
			noremap = true,
		},
		{
			"<A-p>",
			"<cmd>Lspsaga diagnostic_jump_prev<CR>",
			desc = "Jump to prev diagnostic",
			silent = true,
			noremap = true,
		},
		{ "<leader>l", group = "+Lspsaga features" },
		{
			"<leader>lf",
			"<cmd>Lspsaga finder<CR>",
			desc = "Finder",
			silent = true,
			noremap = true,
		},
		{
			"<leader>lo",
			"<cmd>Lspsaga outline<CR>",
			desc = "Outline",
			silent = true,
			noremap = true,
		},
		{
			"<leader>gD",
			function()
				vim.lsp.buf.declaration()
			end,
			desc = "Peek declaration",
			silent = true,
			noremap = true,
		},
		{
			"<leader>gi",
			function()
				vim.lsp.buf.implementation()
			end,
			desc = "Go to implementation",
			silent = true,
			noremap = true,
		},
		{
			"<leader>gr",
			function()
				vim.lsp.buf.references()
			end,
			desc = "Go to references",
			silent = true,
			noremap = true,
		},
		{
			"<leader>gs",
			function()
				vim.lsp.buf.signature_help()
			end,
			desc = "Signature help",
			silent = true,
			noremap = true,
		},
	},
	-- End code section
	-- Debug section
	{ "<leader>d", group = "+Debug" },
	{
		"<leader>dt",
		function()
			require("dap").toggle_breakpoint()
		end,
		desc = "Toggle breakpoint",
		silent = true,
		noremap = true,
	},
	{
		"<leader>dc",
		function()
			require("dap").continue()
		end,
		desc = "Continue",
		silent = true,
		noremap = true,
	},
	-- End debug section
	-- Window management section
	{ "<leader>s", group = "+Split window" },
	{ "<leader>sv", "<cmd>vsplit<CR>", desc = "Vertical" },
	{ "<leader>sh", "<cmd>split<CR>", desc = "Horizontal" },
	{ "<leader>st", group = "To terminal" },
	{ "<leader>stt", "<cmd>terminal<CR>i", desc = "Open term here" },
	{ "<leader>sth", "<cmd>split<CR><cmd>terminal<CR>i", desc = "In horizontal window" },
	{ "<leader>stv", "<cmd>vsplit<CR><cmd>terminal<CR>i", desc = "In vertical window" },
	{ "<leader>stf", "<cmd><CR>", desc = "In floating window" },
	-- End window management section
	-- Telescope section
	{ "<leader>f", group = "+Find" },
	{ "<leader>ff", "<cmd>Yazi<cr>", desc = "Files" },
	{ "<leader>F", builtin.find_files, desc = "Fuzzy files" },
	{ "<leader>fg", builtin.live_grep, desc = "Live grep" },
	{ "<leader>fb", builtin.buffers, desc = "Buffers" },
	{ "<leader>fk", builtin.keymaps, desc = "Keymaps" },
	{ "<leader>fh", builtin.help_tags, desc = "Help tags" },
	-- End telescope section
	-- Trouble section
	{ "<leader>t", group = "+Trouble" },
	{ "<leader>td", "<cmd>Trouble diagnostics toggle<CR>", desc = "Diagnostics" },
	{ "<leader>tb", "<cmd>Trouble diagnostics toggle focus=false<CR>", desc = "Buffer diagnostics" },
	{ "<leader>ts", "<cmd>Trouble symbols toggle focus=false<cr>", desc = "Symbols (Trouble)" },
	{
		"<leader>tl",
		"<cmd>Trouble lsp toggle focus=false win.position=right<cr>",
		desc = "LSP Definitions / references / ... (Trouble)",
	},
	{ "<leader>tL", "<cmd>Trouble loclist toggle<cr>", desc = "Location List (Trouble)" },
	{ "<leader>tq", "<cmd>Trouble qflist toggle<cr>", desc = "Quickfix List (Trouble)" },
	-- End trouble section
	-- Cursors section
	{ "<leader>m", group = "+Add Cursors" },
	{ "<leader>ma", "<cmd>MultipleCursorsAddMatches<CR>", desc = "All matches" },
	{
		"<leader>mA",
		"<cmd>MultipleCursorsAddMatchesV<CR>",
		desc = "All V matches",
		mode = { "v" },
	},
	{ "<leader>mD", "<cmd>MultipleCursorsAddJumpNextMatch<CR>", desc = "Next match" },
	{ "<leader>md", "<cmd>MultipleCursorsJumpNextMatch<CR>", desc = "GOTO next match" },
	{ "<leader>ml", "<cmd>MultipleCursorsLock<CR>", desc = "Lock cursors" },
	{
		mode = { "n", "i" },
		{ "<C-Up>", "<cmd>MultipleCursorsAddUp<CR>", desc = "Up" },
		{ "<C-Down>", "<cmd>MultipleCursorsAddDown<CR>", desc = "Down" },
		{ "<C-LeftMouse>", "<cmd>MultipleCursorsMouseAddDelete<CR>", desc = "Mouse click" },
	},
	-- End cursors section
	-- YankBank
	{ "<leader>y", group = "+YankBank" },
	{ "<leader>yy", "<cmd>YankBank<CR>", desc = "Open" },
	-- End YankBank
	-- Duck section
	{ "<leader>D", group = "+Spawn" },
	{
		"<leader>Dd",
		function()
			duck.hatch("🦆", 5)
		end,
		desc = "Duck",
	},
	{
		"<leader>Dc",
		function()
			duck.hatch("🐈", 5)
		end,
		desc = "Cat",
	},
	{
		"<leader>Do",
		function()
			duck.hatch("🦮", 8)
		end,
		desc = "Dog",
	},
	{
		"<leader>Dk",
		function()
			duck.cook()
		end,
		desc = "Kill last",
	},
	{
		"<leader>DK",
		function()
			duck.cook_all()
		end,
		desc = "Kill all",
	},
	-- End duck section
	-- Flash
	-- {
	--     mode = { "n", "x", "o" },
	--     { "s", function() require("flash").jump() end,       desc = "Flash", },
	--     { "S", function() require("flash").treesitter() end, desc = "Flash treesitter", },
	-- },
	{
		"r",
		function()
			require("flash").remote()
		end,
		desc = "Remote Flash",
		mode = { "o" },
	},
	{
		"R",
		function()
			require("flash").treesitter_search()
		end,
		desc = "Treesitter Search",
		mode = { "o", "x" },
	},
	{
		"<c-s>",
		function()
			require("flash").toggle()
		end,
		desc = "Toggle Flash Search",
		mode = { "c" },
	},
	{ "<S-Esc>", "<C-\\><C-n>", desc = "Exit terminal mode", mode = { "t" } },
})

-- ############### OLD KEYMAPPINGS!!! ###############
-- km.set("n", "<leader>sv", ":vsplit<CR>", { desc = "vertical split" })
-- km.set("n", "<leader>sh", ":split<CR>", { desc = "horizontal split" })
-- km.set("n", "<leader>sm", ":MaximizerToggle<CR>", { desc = "toggle maximize" })
-- km.set("n", "<leader>stt", ":terminal<CR>i", { desc = "open terminal" })
-- km.set("n", "<leader>stv", ":vsplit<CR>:terminal<CR>i", { desc = "terminal vertical split" })
-- km.set("n", "<leader>sth", ":split<CR>:terminal<CR>i", { desc = "terminal horizontal split " })
-- km.set("n", "<leader>ma", "<Cmd>MultipleCursorsAddMatches<CR>", { desc = "add cursor on matches" })
--
-- km.set("n", "<leader>mA", "<Cmd>MultipleCursorsAddMatchesV<CR>", { desc = "add cursor on v matches" })
-- km.set("n", "<leader>mD", "<Cmd>MultipleCursorsAddJumpNextMatch<CR>", { desc = "add cursor on next match" })
-- km.set("n", "<leader>md", "<Cmd>MultipleCursorsJumpNextMatch<CR>", { desc = "jump to next match" })
-- km.set("n", "<leader>ml", "<Cmd>MultipleCursorsLock<CR>", { desc = "lock primary cursor" })

-- km.set("n", "<leader>dd", function()
-- 	require("duck").hatch("🦆", 5)
-- end, { desc = "spawn duck" })
-- km.set("n", "<leader>dc", function()
-- 	require("duck").hatch("🐈", 5)
-- end, { desc = "spawn cat" })
-- km.set("n", "<leader>do", function()
-- 	require("duck").hatch("🦮", 5)
-- end, { desc = "spawn dog" })
-- km.set("n", "<leader>dk", function()
-- 	require("duck").cook()
-- end, { desc = "kill last spawn" })
-- km.set("n", "<leader>da", function()
-- 	require("duck").cook_all()
-- end, { desc = "kill everything" })
-- -km.set("n", "<leader>yy", "<Cmd>YankBank<CR>", { noremap = true, desc = "open yank menu" })
--
-- nvim-tree
-- km.set("n", "<A-d>", ":NvimTreeFocus<CR>", { noremap = true, silent = true })
-- km.set("n", "<A-t>", ":NvimTreeToggle<CR>", { noremap = true, silent = true })
