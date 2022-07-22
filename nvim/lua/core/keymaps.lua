local api = require("utils.api")

--------------------------------------------------------------------------------
-- vim方便编辑的映射
--------------------------------------------------------------------------------
api.map.bulk_register({
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
        mode = { "v" },
        lhs = "Y",
        rhs = '"+y',
        options = { silent = true},
        description = "copy to the system clipboard",
    },
    {
        mode = { "n" },
        lhs = "Q",
        rhs = ":q<CR>",
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

--------------------------------------------------------------------------------
-- 方便进行文本间移动的快捷键
--------------------------------------------------------------------------------
api.map.bulk_register({
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
        options = { silent = true },
        description = "move down five lines",
    },
    {
        mode = { "n", "v" },
        lhs = "K",
        rhs = "5k",
        options = { silent = true },
        description = "move up five lines",
    },
})



--------------------------------------------------------------------------------
-- 方便进行分屏的快捷键
--------------------------------------------------------------------------------
api.map.bulk_register({
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
})


--------------------------------------------------------------------------------
-- telescope 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
  {
      mode = { "n" },
      lhs = "<leader>ff",
      rhs = function()
          require("telescope.builtin").find_files()
      end,
      options = { silent = true },
      description = "Find files in the current workspace",
  },
  {
      mode = { "n" },
      lhs = "<leader>fl",
      rhs = function()
          require("telescope.builtin").live_grep()
      end,
      options = { silent = true },
      description = "Find string in the current workspace",
  },
  {
      mode = { "n" },
      lhs = "<leader>fh",
      rhs = function()
          require("telescope.builtin").oldfiles()
      end,
      options = { silent = true },
      description = "Find telescope history",
  },
  {
      mode = { "n" },
      lhs = "<leader>ft",
      rhs = function()
          require("telescope.builtin").help_tags()
      end,
      options = { silent = true },
      description = "Find all help document tags",
  },
  {
      mode = { "n" },
      lhs = "<leader>fp",
      rhs = ":Telescope projects<CR>",
      options = { silent = true },
      description = "Find projects with telescope",
  },
  {
      mode = { "n" },
      lhs = "<leader>fd",
      rhs = ":TodoTelescope<CR>",
      options = { silent = true },
      description = "Find projects with telescope",
  },
})


--------------------------------------------------------------------------------
-- gitsigns 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "[c",
        rhs = "&diff ? '[c' : '<cmd>Gitsigns prev_hunk<cr>'",
        options = { silent = true, expr = true },
        description = "Jump to the prev hunk",
    },
    {
        mode = { "n" },
        lhs = "]c",
        rhs = "&diff ? ']c' : '<cmd>Gitsigns next_hunk<cr>'",
        options = { silent = true, expr = true },
        description = "Jump to the next hunk",
    },
    {
        mode = { "n" },
        lhs = "<leader>gl",
        rhs = "<cmd>Gitsigns toggle_current_line_blame<cr>",
        options = { silent = true },
        description = "Toggle current line blame",
    },
    {
        mode = { "n" },
        lhs = "<leader>gh",
        rhs = "<cmd>lua require'gitsigns'.preview_hunk()<cr>",
        options = { silent = true },
        description = "Preview current hunk",
    },
    {
        mode = { "n" },
        lhs = "<leader>gH",
        rhs = "<cmd>lua require'gitsigns'.blame_line{full=true}<cr>",
        options = { silent = true },
        description = "Show current block blame",
    },
    {
        mode = { "n" },
        lhs = "<leader>gd",
        rhs = "<cmd>Gitsigns diffthis<cr>",
        options = { silent = true },
        description = "Open deff view",
    },
    {
        mode = { "n" },
        lhs = "<leader>gD",
        rhs = "<cmd>Gitsigns toggle_deleted<cr>",
        options = { silent = true },
        description = "Show deleted lines",
    },
    {
        mode = { "n", "v" },
        lhs = "<leader>gr",
        rhs = "<cmd>Gitsigns reset_hunk<cr>",
        options = { silent = true },
        description = "Reset current hunk",
    },
    {
        mode = { "n" },
        lhs = "<leader>gR",
        rhs = "<cmd>Gitsigns reset_buffer<cr>",
        options = { silent = true },
        description = "Reset current buffer",
    },
})


--------------------------------------------------------------------------------
-- bufferline 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "<c-q>",
        rhs = "<cmd>BufferDelete<cr>",
        options = { silent = true },
        description = "Close current buffer",
    },
    {
        mode = { "n" },
        lhs = "<c-h>",
        rhs = "<cmd>BufferLineCyclePrev<cr>",
        options = { silent = true },
        description = "Go to left buffer",
    },
    {
        mode = { "n" },
        lhs = "<c-l>",
        rhs = "<cmd>BufferLineCycleNext<cr>",
        options = { silent = true },
        description = "Go to right buffer",
    },
    {
        mode = { "n" },
        lhs = "<leader>b1",
        rhs = "<cmd>BufferLineGoToBuffer 1<cr>",
        options = { silent = true },
        description = "Go to buffer 1",
    },
    {
        mode = { "n" },
        lhs = "<leader>b2",
        rhs = "<cmd>BufferLineGoToBuffer 2<cr>",
        options = { silent = true },
        description = "Go to buffer 2",
    },
    {
        mode = { "n" },
        lhs = "<leader>b3",
        rhs = "<cmd>BufferLineGoToBuffer 3<cr>",
        options = { silent = true },
        description = "Go to buffer 3",
    },
    {
        mode = { "n" },
        lhs = "<leader>b4",
        rhs = "<cmd>BufferLineGoToBuffer 4<cr>",
        options = { silent = true },
        description = "Go to buffer 4",
    },
    {
        mode = { "n" },
        lhs = "<leader>b5",
        rhs = "<cmd>BufferLineGoToBuffer 5<cr>",
        options = { silent = true },
        description = "Go to buffer 5",
    },
    {
        mode = { "n" },
        lhs = "<leader>b6",
        rhs = "<cmd>BufferLineGoToBuffer 6<cr>",
        options = { silent = true },
        description = "Go to buffer 6",
    },
    {
        mode = { "n" },
        lhs = "<leader>b7",
        rhs = "<cmd>BufferLineGoToBuffer 7<cr>",
        options = { silent = true },
        description = "Go to buffer 7",
    },
    {
        mode = { "n" },
        lhs = "<leader>b8",
        rhs = "<cmd>BufferLineGoToBuffer 8<cr>",
        options = { silent = true },
        description = "Go to buffer 8",
    },
    {
        mode = { "n" },
        lhs = "<leader>b9",
        rhs = "<cmd>BufferLineGoToBuffer 9<cr>",
        options = { silent = true },
        description = "Go to buffer 9",
    },
})


--------------------------------------------------------------------------------
-- nvim tree 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "<leader>1",
        rhs = function()
            local aux_public = require("utils.aux.public")
            aux_public.toggle_sidebar("NvimTree")
            vim.cmd("NvimTreeToggle")
        end,
        options = { silent = true },
        description = "Open File Explorer",
    },
})


--------------------------------------------------------------------------------
-- undotree 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "<leader>2",
        rhs = function()
            local aux_public = require("utils.aux.public")
            aux_public.toggle_sidebar("undotree")
            vim.cmd("UndotreeToggle")
        end,
        options = { silent = true },
        description = "Open Undo Explorer",
    },
})


--------------------------------------------------------------------------------
-- hop 相关设置
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n", "v" },
        lhs = "<leader><leader>w",
        rhs = "<cmd>HopWord<cr>",
        options = { silent = true },
        description = "Jump to word head",
    },
    {
        mode = { "n", "v" },
        lhs = "<leader><leader>l",
        rhs = "<cmd>HopLine<cr>",
        options = { silent = true },
        description = "Jump to line",
    },
    {
        mode = { "n", "v" },
        lhs = "<leader><leader>f",
        rhs = "<cmd>HopChar1<cr>",
        options = { silent = true },
        description = "Jump to search char on buffer",
    },
})

--------------------------------------------------------------------------------
-- hlslens
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n" },
        lhs = "n",
        rhs = function()
            pcall(vim.cmd, "normal! " .. vim.v.count1 .. "n")
            require("hlslens").start()
        end,
        options = { silent = true },
        description = "Skip to next search result",
    },
    {
        mode = { "n" },
        lhs = "N",
        rhs = function()
            pcall(vim.cmd, "normal! " .. vim.v.count1 .. "N")
            require("hlslens").start()
        end,
        options = { silent = true },
        description = "Jump to previous search result",
    },
})

--------------------------------------------------------------------------------
-- carbon now sh
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n", "v" },
        lhs = "<leader>cn",
        rhs = "ggVG:CarbonNowSh<cr>",
        options = { silent = true },
        description = "Code screenshot",
    },
})

--------------------------------------------------------------------------------
-- translate
--------------------------------------------------------------------------------
api.map.bulk_register({
    {
        mode = { "n", "v" },
        lhs = "<leader>ts",
        rhs = ":Translate ZH -source=EN -output=floating<cr>",
        options = { silent = true },
        description = "Translate English to Chinese and open in float window",
    },
})
