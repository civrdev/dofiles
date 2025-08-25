
-- general --
vim.o.number         = true
vim.o.relativenumber = true
vim.o.wrap           = false
vim.o.swapfile       = false
vim.o.signcolumn     = "yes"
vim.o.winborder      = "rounded"
vim.opt.shortmess:append 'c'
vim.opt.shortmess:append 'I'
vim.o.shell          = '/bin/zsh'
vim.o.showmode       = false
vim.o.termguicolors  = true
vim.o.hidden         = true
vim.o.cursorline     = true
vim.o.undofile       = true
vim.o.scrolloff      = 12
vim.g.formatoptions  = 'qn1'
vim.g.have_nerd_font = true
vim.o.confirm        = true
vim.opt.completeopt  = {'menu', 'menuone', 'noselect'}
vim.o.ignorecase     = true
vim.opt.clipboard:append("unnamedplus")
vim.o.hlsearch       = true
vim.o.incsearch      = true
vim.o.expandtab      = false
vim.o.shiftwidth     = 4
vim.o.tabstop        = 4
vim.o.softtabstop    = 4
vim.opt.list         = true
vim.opt.listchars = {
	trail = "·",
	tab   = "··"
}

-- lsp --
vim.lsp.enable({"lua_ls", "bashls", "clangd"})

-- clipboard --
vim.o.clipboard = 'unnamedplus'
vim.schedule(function()
  vim.o.clipboard = 'unnamedplus'
end)

-- autopair --
local function autopair(open, close)
	return function()
		local col = vim.fn.col(".")
		local line = vim.fn.getline(".")

		local cur = line:sub(col, col)
		local after = line:sub(col)

		local open_count = select(2, after:gsub(vim.pesc(open), ""))
		local close_count = select(2, after:gsub(vim.pesc(close), ""))

		if cur == close then
			return "<Right>"
		end

		if close_count > open_count then
			return open
		end

		return open .. close .. "<Left>"
	end
end

local function autopair_bs()
	local col = vim.fn.col(".")
	local line = vim.fn.getline(".")

	if col > 1 then
		local prev_char = line:sub(col - 1, col - 1)
		local next_char = line:sub(col, col)

		local pairs = {
			["{"] = "}",
			["("] = ")",
			["["] = "]",
			['"'] = '"',
			["'"] = "'",
			["`"] = "`",
		}

		if pairs[prev_char] == next_char then
			return "<Del><BS>"
		end

		local before2 = line:sub(col - 2, col - 2)
		if pairs[before2] == prev_char then
			return "<BS><BS>"
		end
	end

	return "<BS>"
end

vim.keymap.set("i", "(", autopair("(", ")"), { expr = true })
vim.keymap.set("i", "[", autopair("[", "]"), { expr = true })
vim.keymap.set("i", "{", autopair("{", "}"), { expr = true })
vim.keymap.set("i", '"', autopair('"', '"'), { expr = true })
vim.keymap.set("i", "'", autopair("'", "'"), { expr = true })
vim.keymap.set("i", "`", autopair("`", "`"), { expr = true })
vim.keymap.set("i", "<BS>", autopair_bs, { expr = true })


-- colorscheme --
vim.cmd("colorscheme tokyonight")
vim.cmd(":hi statusline guibg=NONE")

vim.cmd [[highlight LineNr guifg=#3B4261]]
vim.cmd [[highlight CursorLineNr guifg=#FF9E64]]

