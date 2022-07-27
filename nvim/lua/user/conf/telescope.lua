local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  vim.notify("telescope not found!")
  return
end

local actions = require "telescope.actions"

-- disable preview binaries
local previewers = require("telescope.previewers")
local Job = require("plenary.job")
local new_maker = function(filepath, bufnr, opts)
  filepath = vim.fn.expand(filepath)
  Job:new({
    command = "file",
    args = { "--mime-type", "-b", filepath },
    on_exit = function(j)
      local mime_type = vim.split(j:result()[1], "/")[1]
      if mime_type == "text" then
        previewers.buffer_previewer_maker(filepath, bufnr, opts)
      else
        -- maybe we want to write something to the buffer here
        vim.schedule(function()
          vim.api.nvim_buf_set_lines(bufnr, 0, -1, false, { "BINARY" })
        end)
      end
    end
  }):sync()
end

-- main settings
telescope.setup {
  defaults = {
    buffer_previewer_maker = new_maker,

    prompt_prefix = " ",
    selection_caret = " ",
    path_display = {
      shorten = {
        len = 4, exclude = { 1, -1 }
      },
    },

    mappings = {
      i = {
        ["<C-n>"] = actions.cycle_history_next,
        ["<C-p>"] = actions.cycle_history_prev,
        ["<C-j>"] = actions.move_selection_next,
        ["<C-k>"] = actions.move_selection_previous,
        ["<C-u>"] = actions.preview_scrolling_up,
        ["<C-d>"] = actions.preview_scrolling_down,
        ["<esc>"] = actions.close,
        ["<CR>"] = actions.select_default,
        ["<C-h>"] = actions.select_horizontal,
        ["<C-v>"] = actions.select_vertical,
        ["<C-t>"] = actions.select_tab,

        ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
      },
    },
  },
  pickers = {
    find_files = {
      theme = "dropdown",
      previewer = false,
      find_command = { "fd" },
    },
    live_grep = {
      theme = "dropdown",
    },
  },
  extensions = {},
}

-- load project extension. see project.lua file

--------------------------------------------------------------------------------
-- telescope mapping
--------------------------------------------------------------------------------
-- the short name of function vim.api.nvim_set_keymap
local keymap = vim.api.nvim_set_keymap
local opts = { noremap = true, silent = true }
vim.g.mapleader = " "

keymap("n", "<leader>ff", ":Telescope find_files<cr>", opts)
keymap("n", "<leader>fl", ":Telescope live_grep<cr>", opts)
keymap("n", "<leader>fh", ":Telescope oldfiles<cr>", opts)
keymap("n", "<leader>fp", ":Telescope projects<cr>", opts)
keymap("n", "<leader>ft", ":TodoTelescope<cr>", opts)
