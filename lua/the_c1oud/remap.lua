vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move higlighted content up and down
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- make search term stay in the middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- vim

-- copy to system clipboard
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- It opens some buffer that I have to quit out of I don't like it
vim.keymap.set("n", "Q", "<nop>")

-- edit a word everywhere
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- edit a word everywhere
vim.keymap.set("n", "<leader>e", ":NvimTreeToggle<cr>")

-- switch to the nvim-tree
vim.keymap.set("n", "<leader>nt", ":NvimTreeFocus<cr>")

-- switch to the active buffer
vim.keymap.set("n", "<leader>ny", ":NvimTreeFocus<cr>:bprev<cr>")
