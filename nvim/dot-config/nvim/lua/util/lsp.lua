local km = vim.keymap

local M = {}

-- set keymaps on the active lsp server

M.on_attach = function(client, bufnr)
	km.set(
		"n",
		"<leader>ca",
		"<cmd>lua vim.lsp.buf.code_action()<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Actions" }
	)
    km.set(
		"n",
		"<leader>cf",
		"<cmd>lua vim.lsp.buf.format({async = true})<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Format" }
	)
	km.set(
		"n",
		"<leader>rn",
		"<cmd>lua vim.lsp.buf.rename()<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Rename" }
	)
	km.set(
		"n",
		"<leader>wrn",
		"<cmd>Lspsaga project_replace<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "wide smart rename" }
	)
	-- km.set(
	-- 	"n",
	-- 	"<leader>gd",
	-- 	"<cmd>lua vim.lsp.buf.definition()<CR>",
	-- 	{ noremap = true, silent = true, buffer = bufnr, desc = "Go to definition" }
	-- )
    km.set(
		"n",
		"<leader>gd",
		"<cmd>Lspsaga peek_definition<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Peek definition" }
	)

    km.set(
		"n",
		"<leader>gD",
		"<cmd>lua vim.lsp.buf.declaration()<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Go to declaration" }
	)
    km.set(
		"n",
		"<leader>gi",
		"<cmd>lua vim.lsp.buf.implementation()<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Go to implementation" }
	)
    km.set(
		"n",
		"<leader>gt",
		"<cmd>Lspsaga peek_type_definition<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Peek type definition" }
	)
    km.set(
		"n",
		"<leader>gr",
		"<cmd>lua vim.lsp.buf.references()<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Go to reference" }
	)
    km.set(
		"n",
		"<leader>gs",
		"<cmd>lua vim.lsp.buf.signature_help()<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "Go to Signature help" }
	)
	km.set(
		"n",
		"<S-p>",
		"<cmd>Lspsaga diagnostic_jump_prev<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "jump to prev diagnostic" }
	)
	km.set(
		"n",
		"<S-n>",
		"<cmd>Lspsaga diagnostic_jump_next<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "jump to next diagnostic" }
	)
	km.set(
		"n",
		"K",
		"<cmd>Lspsaga hover_doc<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "documentation under cursor" }
	)
	km.set(
		"n",
		"<leader>lf",
		"<cmd>Lspsaga finder<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "toggle finder" }
	)
	km.set(
		"n",
		"<leader>lo",
		"<cmd>Lspsaga outline<CR>",
		{ noremap = true, silent = true, buffer = bufnr, desc = "toggle outline" }
	)

	if client.name == "clangd" then
		km.set("n", "<leader>lcsh", "<cmd>ClangdSwitchSourceHeader<CR>", { desc = "Switch Source/Header" })
	end
end

M.diagnostic_signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }

return M
