local api = require("utils.api")

api.map.bulk_register({
    -- vim方便编辑的映射
    {
        mode = { "" },
        lhs = ":",
        rhs = ";",
        options = {},
        description = "exchange ; and :",
    },
    {
        mode = { "" },
        lhs = ";",
        rhs = ":",
        options = {},
        description = "exchange ; and :",
    },
    {
        mode = { "n" },
        lhs = "Q",
        rhs = ":q",
        options = { silent = true},
        description = "quit the window",
    },
    {
        mode = { "n" },
        lhs = "<leader>sa",
        rhs = "ggvG",
        options = { silent = true},
        description = "seleect all text",
    },
    {
        mode = { "n" },
        lhs = "<leader><esc>",
        rhs = ":qa!<cr>",
        options = { silent = true },
        description = "Escape Neovim",
    },
    {
        mode = { "t" },
        lhs = "<esc>",
        rhs = "<c-\\><c-n>",
        options = { silent = true },
        description = "Escape terminal insert mode",
    },
    {
        mode = { "n" },
        lhs = "<esc>",
        rhs = ":noh<cr>",
        options = { silent = true },
        description = "Clear search highlight",
    },
    {
        mode = { "n" },
        lhs = "<leader>cs",
        rhs = ":set spell!<cr>",
        options = { silent = true },
        description = "Enable or disable spell checking",
    },
})


api.map.bulk_register({
    -- 方便进行文本间移动的快捷键
    {
        mode = { "n" },
        lhs = "<c-u>",
        rhs = function()
            vim.cmd("normal! " .. math.ceil(vim.api.nvim_win_get_height(0) / 4) .. "k")
        end,
        options = { silent = true },
        description = "Move 1/4 screen up",
    },
    {
        mode = { "n" },
        lhs = "<c-d>",
        rhs = function()
            vim.cmd("normal! " .. math.ceil(vim.api.nvim_win_get_height(0) / 4) .. "j")
        end,
        options = { silent = true },
        description = "Move 1/4 screen down",
    },
    {
        mode = { "n", "v" },
        lhs = "k",
        rhs = function()
            return vim.v.count > 0 and "k" or "gk"
        end,
        options = { silent = true, expr = true },
        description = "Move up one line",
    },
    {
        mode = { "n", "v" },
        lhs = "j",
        rhs = function()
            return vim.v.count > 0 and "j" or "gj"
        end,
        options = { silent = true, expr = true },
        description = "Move down one line",
    },
    {
        mode = { "n", "v" },
        lhs = "H",
        rhs = function()
            return vim.v.count > 0 and "^" or "g^"
        end,
        options = { silent = true, expr = true },
        description = "Move to the first character at the beginning of the line",
    },
    {
        mode = { "n", "v" },
        lhs = "L",
        rhs = function()
            return vim.v.count > 0 and "$" or "g$"
        end,
        options = { silent = true, expr = true },
        description = "Move to the last character at the end of the line",
    },
    {
        mode = { "n", "v" },
        lhs = "J",
        rhs = "5j",
        options = { silent = true, expr = true },
        description = "move down five lines",
    },
    {
        mode = { "n", "v" },
        lhs = "K",
        rhs = "5k",
        options = { silent = true, expr = true },
        description = "move up five lines",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-w>",
        rhs = "<c-right>",
        options = {},
        description = "Jump to next word in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-b>",
        rhs = "<c-left>",
        options = {},
        description = "Jump to previous word in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-k>",
        rhs = "<up>",
        options = {},
        description = "Move cursor up in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-j>",
        rhs = "<down>",
        options = {},
        description = "Move cursor down in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-h>",
        rhs = "<left>",
        options = {},
        description = "Move cursor left in insert mode",
    },
    {
        mode = { "i", "c", "t" },
        lhs = "<m-l>",
        rhs = "<right>",
        options = {},
        description = "Move cursor right in insert mode",
    },
})

api.map.bulk_register({
    -- 方便进行分屏的快捷键
    {
        mode = { "n" },
        lhs = "<leader>h",
        rhs = "<C-w>h",
        options = { silent = true },
        description = "go to the left windows",
    },
    {
        mode = { "n" },
        lhs = "<leader>j",
        rhs = "<C-w>j",
        options = { silent = true },
        description = "go to the bottom windows",
    },
    {
        mode = { "n" },
        lhs = "<leader>k",
        rhs = "<C-w>k",
        options = { silent = true },
        description = "go to the upper windows",
    },
    {
        mode = { "n" },
        lhs = "<leader>l",
        rhs = "<C-w>l",
        options = { silent = true },
        description = "go to the right windows",
    },
    {
        mode = { "n" },
        lhs = "sl",
        rhs = ":set splitright<CR>:vs<CR>",
        options = { silent = true },
        description = "split the windows and cursor on right",
    },
    {
        mode = { "n" },
        lhs = "sh",
        rhs = ":set nosplitright<CR>:vs<CR>",
        options = { silent = true },
        description = "split the windows and cursor on left",
    },
    {
        mode = { "n" },
        lhs = "sj",
        rhs = ":set splitbelow<CR>:sp<CR>",
        options = { silent = true },
        description = "split the windows and cursor on down",
    },
    {
        mode = { "n" },
        lhs = "sk",
        rhs = ":set nosplitbelow<CR>:sp<CR>",
        options = { silent = true },
        description = "split the windows and cursor on up",
    },
    {
        mode = { "n" },
        lhs = "sb",
        rhs = "<C-w>t<C-w>H",
        options = { silent = true },
        description = "Make a horizontal window a vertical window",
    },
    {
        mode = { "n" },
        lhs = "<m-k>",
        rhs = "<c-w>-",
        options = { silent = true },
        description = "Reduce horizontal split screen size",
    },
    {
        mode = { "n" },
        lhs = "<m-j>",
        rhs = "<c-w>+",
        options = { silent = true },
        description = "Increase horizontal split screen size",
    },
    {
        mode = { "n" },
        lhs = "<m-h>",
        rhs = "<c-w><",
        options = { silent = true },
        description = "Reduce vertical split screen size",
    },
    {
        mode = { "n" },
        lhs = "<m-l>",
        rhs = "<c-w>>",
        options = { silent = true },
        description = "Increase vertical split screen size",
    },
})
