local lazypath = vim.fn.stdpath("data") .. "/lazy/lazy.nvim"
if not vim.loop.fs_stat(lazypath) then
	vim.fn.system({
		"git",
		"clone",
		"--filter=blob:none",
		"https://github.com/folke/lazy.nvim.git",
		"--branch=stable",
		lazypath,
	})
end
vim.opt.rtp:prepend(lazypath)

require("config.globals")
require("config.options")
require("config.keymaps")
require("config.autocmds")

local plugins = "plugins"

local opts = {
	defaults = {
		lazy = true,
	},
	install = {
		colorscheme = { "carbonfox" },
	},
	rtp = {
		disabled_plugins = {
			"gzip",
			"matchit",
			"matchparen",
			"netrwPlugin",
			"tarPlugin",
			"tohtml",
			"tutor",
			"zipPlugin",
		},
	},
	change_detection = {
		notify = false,
	},
}

require("lazy").setup(plugins, opts)

--Which_key existing keychains
local wk = require("which-key")

wk.register({
	["<leader>"] = {
		s = {
			name = "Search with Telescope",
			f = { "<cmd>Telescope find_files<cr>", "Find File" },
			o = { "<cmd>Telescope oldfiles<cr>", "Search Recent File" },
			k = { "<cmd>Telescope keymaps<cr>", "Show Telescope keymaps" },
			h = { "<cmd>Telescope help_tags<cr>", "Search help tags" },
			G = { "<cmd>Telescope live_grep<cr>", "Search with grep" },
			b = { "<cmd>Telescope buffers<cr>", "Search current buffer" },
			w = { "<cmd>Telescope grep_string<cr>", "Search current word" },
			d = { "<cmd>Telescope diagnostics<cr>", "Search diagnostics" },
			g = { "<cmd>Telescope git_files<cr>", "Search git files" },
			p = { "<cmd>Telescope fd<cr>", "Search present working dir" },
		},
		g = {
			name = "Go to definition",
			i = { "<cmd>Lspsaga finder<cr>", "Go to implementations" },
			d = { "<cmd>Lspsaga peek_definition<cr>", "Peek definition" },
			D = { "<cmd>Lspsaga goto_definition<cr>", "Go to definition" },
			n = { "<cmd>Lspsaga rename<cr>", "Rename" },
		},
		d = {
			name = "code diagnostics",
			a = { "<cmd>Lspsaga code_action<cr>", "see available code actions" },
			d = { "<cmd>Lspsaga show_line_diagnostics<cr>", "Show line diagnostics" },
			k = { "<cmd>Lspsaga diagnostic_jump_prev<cr>", "Jump to previous diagnostic" },
			j = { "<cmd>Lspsaga diagnostic_jump_next<cr>", "Jump to next diagnostics" },
		},
		v = {
			name = "Split screen",
		},
		p = {
			name = "show path",
			a = { "<cmd>echo expand('%:p')<cr>", "Display Path" },
		},
	},
})
