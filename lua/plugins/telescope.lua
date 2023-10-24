local keymap = vim.keymap

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
	})
end

return {
    {
        'nvim-telescope/telescope.nvim', 
        tag = '0.1.4',
        dependencies = {'nvim-lua/plenary.nvim'},
        lazy = false,
    },
    {
         'nvim-telescope/telescope-fzf-native.nvim',
        build = 'make',
        cond = function()
          return vim.fn.executable 'make' == 1
        end,
        lazy = false,
    },
    config = config,
}
