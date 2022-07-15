-- https://github.com/nvim-telescope/telescope.nvim

local api = require("utils.api")

local M = {
    safe_requires = {
        { "telescope" },
    },
}


function M.before()
end


function M.load()
    -- 禁止预览bin文件
    local actions = require("telescope.actions")
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

    M.telescope.setup({
        defaults = {
            -- prompt_prefix = " ",
            -- selection_caret = " ",
            -- entry_prefix = " ",
            -- multi_icon = " ",
            -- color_devicons = true,
            file_ignore_patterns = { "node_modules", "bin", "build" },
            -- theme
            layout_strategy = "bottom_pane",
            -- config
            layout_config = {
                bottom_pane = {
                    height = 15,
                    preview_cutoff = 100,
                    prompt_position = "bottom",
                },
            },
            -- pickers = {
            --     find_files = {
            --         hidden = true,
            --     },
            --     live_grep = {
            --         -- don't include the filename in the search results
            --         only_sort_text = true,
            --     },
            -- },
            vimgrep_arguments = {
                "rg",
                "--color=never",
                "--no-heading",
                "--with-filename",
                "--line-number",
                "--column",
                "--smart-case",
                "--hidden",
                "--glob=!.git/",
            },
            file_sorter = require("telescope.sorters").get_fuzzy_file,
            generic_sorter = require("telescope.sorters").get_generic_fuzzy_sorter,
            path_display = { "truncate" },
            winblend = 0,
            border = {},
            borderchars = { "─", "│", "─", "│", "╭", "╮", "╯", "╰" },
            use_less = true,
            set_env = { ["COLORTERM"] = "truecolor" }, -- default = nil,
            file_previewer = require("telescope.previewers").vim_buffer_cat.new,
            grep_previewer = require("telescope.previewers").vim_buffer_vimgrep.new,
            qflist_previewer = require("telescope.previewers").vim_buffer_qflist.new,

            buffer_previewer_maker = new_maker,

            mappings = {
              i = {
                ["<esc>"] = actions.close,
                ["<C-n>"] = actions.cycle_history_next,
                ["<C-p>"] = actions.cycle_history_prev,

                ["<C-j>"] = actions.move_selection_next,
                ["<C-k>"] = actions.move_selection_previous,

                ["<CR>"] = actions.select_default,
                ["<C-x>"] = actions.select_horizontal,
                ["<C-v>"] = actions.select_vertical,
                ["<C-t>"] = actions.select_tab,

                ["<C-u>"] = actions.preview_scrolling_up,
                ["<C-d>"] = actions.preview_scrolling_down,

                ["<PageUp>"] = actions.results_scrolling_up,
                ["<PageDown>"] = actions.results_scrolling_down,

                ["<Tab>"] = actions.toggle_selection + actions.move_selection_worse,
                ["<S-Tab>"] = actions.toggle_selection + actions.move_selection_better,
                ["<C-q>"] = actions.send_to_qflist + actions.open_qflist,
                ["<M-q>"] = actions.send_selected_to_qflist + actions.open_qflist,
                ["<C-l>"] = actions.complete_tag,
                ["<C-_>"] = actions.which_key, -- keys from pressing <C-/>
              },
            },
          },

        pickers = {
          find_files = {
          theme = "dropdown",
          previewer = false,
          -- find_command = { "find", "-type", "f" },
          find_command = { "fd", "-H" , "-I"},  -- "-H" search hidden files, "-I" do not respect to gitignore
          },
        },

        extensions_list = { "themes", "terms" },
    })
end

-- 用来解决通过find files进入新的buf中时无法使用折叠的bug
function M.after()
    -- FIX: https://github.com/nvim-telescope/telescope.nvim/issues/699
    vim.api.nvim_create_autocmd({ "BufEnter" }, {
        pattern = { "*" },
        command = "normal zx",
    })
end


return M
