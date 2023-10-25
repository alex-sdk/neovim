local mapkey = require("util.keymapper").mapkey
local keymap = vim.keymap

-- General mappings
keymap.set("n", "<C-c>", "<Esc>", { noremap = true, silent = true })
keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true })
keymap.set("x", "<C-c>", "<Esc>", { noremap = true, silent = true })
keymap.set("n", "<space>", "<Nop>", { silent = true })
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<leader>d", "<cmd>bd<cr>")

-- Lazy load
keymap.set("n", "<leader>l", ":Lazy<CR>", { noremap = true, silent = true })

-- Buffer Navigation
mapkey("<leader>1", "bnext", "n") -- Next buffer
mapkey("<leader>2", "bprevious", "n") -- Prev buffer

-- Pane and Window Navigation
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right

-- Window Management
mapkey("<leader>vs", "vsplit", "n") -- Split Vertically
mapkey("<leader>vh", "hsplit", "n") -- Split Horizontal

-- Indenting
mapkey("<", "v", "<gv") -- Shift Indentation to Left
mapkey(">", "v", ">gv") -- Shift Indentation to Right

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n")
