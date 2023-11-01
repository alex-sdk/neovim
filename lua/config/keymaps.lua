local mapkey = require("util.keymapper").mapkey
local keymap = vim.keymap

-- General mappings
keymap.set("n", "<C-c>", "<Esc>", { noremap = true, silent = true })
keymap.set("i", "<C-c>", "<Esc>", { noremap = true, silent = true })
keymap.set("x", "<C-c>", "<Esc>", { noremap = true, silent = true })
keymap.set("n", "<space>", "<Nop>", { silent = true })
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<leader>x", "<cmd>bd<cr>")
keymap.set("n", "<leader>w", "<cmd>w<cr>")

-- Lazy load
keymap.set("n", "<leader>l", ":Lazy<CR>", { noremap = true, silent = true })

-- Buffer Navigation
mapkey("<leader>1", "bnext", "n") -- Next buffer
mapkey("<leader>2", "bprevious", "n") -- Prev buffer

mapkey("<C-h>", "<C-w>h", "n") -- Navigate Left
mapkey("<C-j>", "<C-w>j", "n") -- Navigate Down
mapkey("<C-k>", "<C-w>k", "n") -- Navigate Up
mapkey("<C-l>", "<C-w>l", "n") -- Navigate Right- Pane and Window Navigation
mapkey("<C-h>", "TmuxNavigateLeft", "n") -- Navigate Left
mapkey("<C-j>", "TmuxNavigateDown", "n") -- Navigate Down
mapkey("<C-k>", "TmuxNavigateUp", "n") -- Navigate Up
mapkey("<C-l>", "TmuxNavigateRight", "n") -- Navigate Right
mapkey("<C-h>", "wincmd h", "t") -- Navigate Left
mapkey("<C-j>", "wincmd j", "t") -- Navigate Down
mapkey("<C-k>", "wincmd k", "t") -- Navigate Up
mapkey("<C-l>", "wincmd l", "t") -- Navigate Right

-- Window Management
mapkey("<leader>vs", "vsplit", "n") -- Split Vertically
mapkey("<leader>vh", "hsplit", "n") -- Split Horizontal

-- Indenting
mapkey("<", "v", "<gv") -- Shift Indentation to Left
mapkey(">", "v", ">gv") -- Shift Indentation to Right

-- Show Full File-Path
mapkey("<leader>pa", "echo expand('%:p')", "n")

--Comment plugin
