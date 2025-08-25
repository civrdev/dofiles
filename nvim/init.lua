
-- plugins --
vim.pack.add({
	{ src = "https://github.com/saghen/blink.cmp", build = 'cargo build --release' },
	{ src = "https://github.com/lukas-reineke/indent-blankline.nvim" },
	{ src = "https://github.com/nvim-tree/nvim-web-devicons" },
	{ src = "https://github.com/nvim-lualine/lualine.nvim" },
	{ src = "https://github.com/neovim/nvim-lspconfig" },
	{ src = "https://github.com/echasnovski/mini.pick" },
	{ src = "https://github.com/folke/tokyonight.nvim" },
	{ src = "https://github.com/stevearc/oil.nvim" }
})

-- plugin opts --
require "nvim-web-devicons".setup()
require "mini.pick".setup()
require "oil".setup()
require "plugins/lspconfig"
require "plugins/lualine"
require "plugins/blink"
require "plugins/ibl"

-- nvim/lua --
require 'core/config'
require 'core/mappings'
require 'core/autocommands'
