local mapkey = require("util.keymapper").mapkey

local config = function()
	local telescope = require("telescope")
	telescope.setup({
		defaults = {
			mappings = {
				i = {
					["<C-j>"] = "move_selection_next",
					["<C-k>"] = "move_selection_previous",
				},
			},
		},
		pickers = {
			buffers = {
				theme = "dropdown",
				previewer = false,
			},
		},
	})
end

return {
	"nvim-telescope/telescope.nvim",
	tag = "0.1.3",
	lazy = false,
	dependencies = { "nvim-lua/plenary.nvim" },
	config = config,
	keys = {
		mapkey("<leader>sk", "Telescope keymaps", "n"),
		mapkey("<leader>sh", "Telescope help_tags", "n"),
		mapkey("<leader>sf", "Telescope find_files", "n"),
		mapkey("<leader>sG", "Telescope live_grep", "n"),
		mapkey("<leader>sb", "Telescope buffers", "n"),
		mapkey("<leader>sw", "Telescope grep_string", "n"),
		mapkey("<leader>sd", "Telescope diagnostics", "n"),
		mapkey("<leader>sg", "Telescope git_files", "n"),
		mapkey("<leader>so", "Telescope oldfiles", "n"),
		mapkey("<leader>sp", "Telescope fd", "n"),
	},
}
