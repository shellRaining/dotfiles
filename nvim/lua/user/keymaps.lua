-- the short name of function vim.api.nvim_set_keymap
local keymap = vim.api.nvim_set_keymap

local opts = { noremap = true, silent = true }

local opts2 = { noremap = true }

vim.g.mapleader = " "

------------------------------------------------------------------------------
-- edit mapping
--------------------------------------------------------------------------------
keymap("n", ";", ":", opts2)
keymap("n", ":", ";", opts2)
keymap("x", ";", ":", opts2)
keymap("x", ":", ";", opts2)
keymap("n", "S", ":wa<CR>", opts2)
keymap("n", "Q", ":q<CR>", opts2)
keymap("n", "R", ":source ~/.config/nvim/init.lua<CR>", opts2)
keymap("n", "<leader>sa", "ggVG", opts2)

--------------------------------------------------------------------------------
-- move mapping
--------------------------------------------------------------------------------
keymap("", "J", "5j", opts)
keymap("", "K", "5k", opts)
keymap("n", "H", "^", opts)
keymap("n", "L", "$", opts)

--------------------------------------------------------------------------------
-- split the windows mapping
--------------------------------------------------------------------------------
keymap("n", "<leader>h", "<C-w>h", opts)
keymap("n", "<leader>j", "<C-w>j", opts)
keymap("n", "<leader>k", "<C-w>k", opts)
keymap("n", "<leader>l", "<C-w>l", opts)

keymap("n", "sl", ":set splitright<CR>:vs<CR>", opts)
keymap("n", "sh", ":set nosplitright<CR>:vs<CR>", opts)
keymap("n", "sj", ":set splitbelow<CR>:sp<CR>", opts)
keymap("n", "sk", ":set nosplitbelow<CR>:sp<CR>", opts)

keymap("n", "sb", "<C-w>t<C-w>H", opts)
keymap("n", "su", "<C-w>t<C-w>H", opts)

--------------------------------------------------------------------------------
-- search mapping
--------------------------------------------------------------------------------
keymap("n", "<leader><cr>", ":set nohlsearch<cr>", opts)
keymap("n", "n", "nzzzv", opts)
keymap("n", "N", "Nzzzv", opts)

keymap("n", "<leader>ts", ":Translate", {})
keymap("x", "<leader>ts", ":Translate zh", {})

--------------------------------------------------------------------------------
-- vsnip
--------------------------------------------------------------------------------
keymap("i", "<tab>", "vsnip#jumpable(1)? '<Plug>(vsnip-jump-next)':'<tab>'", {silent = true, expr = true})
keymap("s", "<tab>", "vsnip#jumpable(1)? '<Plug>(vsnip-jump-next)':'<tab>'", {silent = true, expr = true})
keymap("i", "<s-tab>", "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<s-tab>'",{silent = true, expr = true})
keymap("s", "<s-tab>", "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<s-tab>'", {silent = true, expr = true})
