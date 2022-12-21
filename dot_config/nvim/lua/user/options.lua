-- Start with basic
vim.o.number = true
vim.o.relativenumber = true
vim.o.mouse = "a"

-- Comfort
vim.o.scrolloff = 3
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.gdefault = true -- regex operates globally by default
vim.o.modeline = true -- enable modeline expressions in files
vim.o.modelines = 1

vim.o.clipboard = "unnamedplus" -- copy to system clipboard

-- UI
vim.o.background = "dark"
vim.o.termguicolors = true
vim.o.completeopt = "menuone,noselect" -- completion menu options

-- Key bindings
vim.g.mapleader = " "

vim.api.nvim_set_keymap("n", "<leader><leader>", "<C-^>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>n", ":noh<CR>", { noremap = true })
vim.api.nvim_set_keymap("n", "<leader>r", ":source ~/.config/nvim/init.lua<CR>", { noremap = true })

vim.api.nvim_set_keymap("n", "<C-h>", "<C-w>h", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-j>", "<C-w>j", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-k>", "<C-w>k", { noremap = true })
vim.api.nvim_set_keymap("n", "<C-l>", "<C-w>l", { noremap = true })

vim.cmd("colorscheme witty")

-- Indenting
vim.o.smartindent = true
vim.o.expandtab = true
vim.o.tabstop = 2
vim.o.shiftwidth = 2
