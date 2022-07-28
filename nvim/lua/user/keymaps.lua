-- the short name of function vim.api.nvim_set_keymap
local keymap = vim.api.nvim_set_keymap
local silentmode = { noremap = true, silent = true }
local unsilentmode = { noremap = true }

vim.g.mapleader = " "

------------------------------------------------------------------------------
-- edit mapping
--------------------------------------------------------------------------------
keymap("", ";", ":", unsilentmode)
keymap("", ":", ";", unsilentmode)
keymap("n", "S", ":wa<CR>", unsilentmode)
keymap("n", "Q", ":q<CR>", unsilentmode)
keymap("n", "R", ":source ~/.config/nvim/init.lua<CR>", unsilentmode)
keymap("n", "<leader>sa", "ggVG", silentmode)
keymap("v", "Y", '"+y', silentmode)
keymap("n", "<leader><esc>", ":qa!<cr>", silentmode)
keymap("n", "<esc>", ":noh<cr>", silentmode)

--------------------------------------------------------------------------------
-- move mapping
--------------------------------------------------------------------------------
keymap("", "J", "5j", silentmode)
keymap("", "K", "5k", silentmode)
keymap("n", "H", "^", silentmode)
keymap("n", "L", "$", silentmode)

--------------------------------------------------------------------------------
-- split the windows mapping
--------------------------------------------------------------------------------
keymap("n", "<leader>h", "<C-w>h", silentmode)
keymap("n", "<leader>j", "<C-w>j", silentmode)
keymap("n", "<leader>k", "<C-w>k", silentmode)
keymap("n", "<leader>l", "<C-w>l", silentmode)

keymap("n", "sl", ":set splitright<CR>:vs<CR>", silentmode)
keymap("n", "sh", ":set nosplitright<CR>:vs<CR>", silentmode)
keymap("n", "sj", ":set splitbelow<CR>:sp<CR>", silentmode)
keymap("n", "sk", ":set nosplitbelow<CR>:sp<CR>", silentmode)

keymap("n", "sb", "<C-w>t<C-w>H", silentmode)

--------------------------------------------------------------------------------
-- telescope
--------------------------------------------------------------------------------
keymap("n", "<leader>ff", ":Telescope find_files<cr>", silentmode)
keymap("n", "<leader>fl", ":Telescope live_grep<cr>", silentmode)
keymap("n", "<leader>fh", ":Telescope oldfiles<cr>", silentmode)
keymap("n", "<leader>ft", ":Telescope help_tags<cr>", silentmode)
keymap("n", "<leader>fp", ":Telescope projects<cr>", silentmode)
keymap("n", "<leader>fd", ":TodoTelescope<cr>", silentmode)

--------------------------------------------------------------------------------
-- gitsigns
--------------------------------------------------------------------------------
keymap("n", "<leader>gj", ":Gitsigns next_hunk<CR>", silentmode)
keymap("n", "<leader>gk", ":Gitsigns prev_hunk<CR>", silentmode)
keymap("o", "ig", ":<C-U>Gitsigns select_hunk<CR>", silentmode)
keymap("x", "ig", ":<C-U>Gitsigns toggle_deleted<CR>", silentmode)

--------------------------------------------------------------------------------
-- bufferline
--------------------------------------------------------------------------------
keymap("n", "<c-q>", "<cmd>bdelete<CR>", silentmode)
keymap("n", "<c-h>", ":BufferLineCyclePrev<CR>", silentmode)
keymap("n", "<c-l>", ":BufferLineCycleNext<CR>", silentmode)
keymap("n", "<leader>b1", ":BufferLineGoToBuffer 1<cr>", silentmode)
keymap("n", "<leader>b2", ":BufferLineGoToBuffer 2<cr>", silentmode)
keymap("n", "<leader>b3", ":BufferLineGoToBuffer 3<cr>", silentmode)
keymap("n", "<leader>b4", ":BufferLineGoToBuffer 4<cr>", silentmode)
keymap("n", "<leader>b5", ":BufferLineGoToBuffer 5<cr>", silentmode)
keymap("n", "<leader>b6", ":BufferLineGoToBuffer 6<cr>", silentmode)
keymap("n", "<leader>b7", ":BufferLineGoToBuffer 7<cr>", silentmode)
keymap("n", "<leader>b8", ":BufferLineGoToBuffer 8<cr>", silentmode)
keymap("n", "<leader>b9", ":BufferLineGoToBuffer 9<cr>", silentmode)

--------------------------------------------------------------------------------
-- treeview
--------------------------------------------------------------------------------
keymap('n', '<leader>1', ":NvimTreeToggle<cr>", silentmode)
keymap('n', '<leader>2', ":UndotreeToggle<cr>", silentmode)

--------------------------------------------------------------------------------
-- hop
--------------------------------------------------------------------------------
keymap('n', 'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
  , {})
keymap('n', 'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
  , {})
keymap('o', 'f',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
  , {})
keymap('o', 'F',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true, inclusive_jump = true })<cr>"
  , {})
keymap('', 't',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.AFTER_CURSOR, current_line_only = true })<cr>"
  , {})
keymap('', 'T',
  "<cmd>lua require'hop'.hint_char1({ direction = require'hop.hint'.HintDirection.BEFORE_CURSOR, current_line_only = true })<cr>"
  , {})
keymap('n', '<leader><leader>w', "<cmd>HopWord<cr>", {})
keymap('n', '<leader><leader>l', "<cmd>HopLine<cr>", {})
keymap('n', '<leader><leader>f', "<cmd>HopChar1<cr>", {})

--------------------------------------------------------------------------------
-- Translate
--------------------------------------------------------------------------------
keymap("n", "<leader>ci", ":ggVGCarbonNowSh<cr>", silentmode)
keymap("v", "<leader>ci", ":CarbonNowSh<cr>", silentmode)

--------------------------------------------------------------------------------
-- Translate
--------------------------------------------------------------------------------
keymap("n", "<leader>ts", ":Translate ZH -source=EN -output=floating<cr>", silentmode)
keymap("v", "<leader>ts", ":Translate ZH -source=EN -output=floating<cr>", silentmode)

--------------------------------------------------------------------------------
-- vsnip
--------------------------------------------------------------------------------
keymap("i", "<tab>", "vsnip#jumpable(1)? '<Plug>(vsnip-jump-next)':'<tab>'", { silent = true, expr = true })
keymap("s", "<tab>", "vsnip#jumpable(1)? '<Plug>(vsnip-jump-next)':'<tab>'", { silent = true, expr = true })
keymap("i", "<s-tab>", "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<s-tab>'", { silent = true, expr = true })
keymap("s", "<s-tab>", "vsnip#jumpable(-1)?'<Plug>(vsnip-jump-prev)':'<s-tab>'", { silent = true, expr = true })
