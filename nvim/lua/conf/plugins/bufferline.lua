-- https://github.com/akinsho/bufferline.nvim

local api = require("utils.api")

local M = {
    safe_requires = {
        { "bufferline" },
    },
    icons = api.get_icons("diagnostic", true),
}


function M.before()
end

function M.load()
    M.bufferline.setup({
        options = {
            themable = true,
            show_close_icon = true,
            numbers = "ordinal",
            indicator_icon = "▎",
            buffer_close_icon = "",
            modified_icon = "●",
            close_icon = "",
            left_trunc_marker = "",
            right_trunc_marker = "",
            diagnostics = "nvim_lsp",
            separator_style = "thin",
            ---@diagnostic disable-next-line: unused-local
            diagnostics_indicator = function(count, level, diagnostics_dict, context)
                local message
                if diagnostics_dict.error then
                    message = string.format("%s%s", M.icons.Error, diagnostics_dict.error)
                elseif diagnostics_dict.warning then
                    message = string.format("%s%s", M.icons.Warn, diagnostics_dict.warning)
                elseif diagnostics_dict.info then
                    message = string.format("%s%s", M.icons.Info, diagnostics_dict.info)
                elseif diagnostics_dict.hint then
                    message = string.format("%s%s", M.icons.Hint, diagnostics_dict.hint)
                else
                    message = ""
                end
                return message
            end,
            -- custom_areas = {
            --     right = function()
            --         return {
            --             { text = "  ", guifg = "#f28fad", guibg = "#1A1826" },
            --         }
            --     end,
            -- },
            offsets = {
                {
                    filetype = "NvimTree",
                    text = "File Explorer",
                    highlight = "Directory",
                    text_align = "center",
                },
                {
                    filetype = "aerial",
                    text = "Outline Explorer",
                    highlight = "Directory",
                    text_align = "center",
                },
                {
                    filetype = "undotree",
                    text = "Undo Explorer",
                    highlight = "Directory",
                    text_align = "center",
                },
                {
                    filetype = "dbui",
                    text = "Database Explorer",
                    highlight = "Directory",
                    text_align = "center",
                },
                {
                    filetype = "spectre_panel",
                    text = "Project Blurry Search",
                    highlight = "Directory",
                    text_align = "center",
                },
                {
                    filetype = "toggleterm",
                    text = "Integrated Terminal",
                    highlight = "Directory",
                    text_align = "center",
                },
            },
        },
    })
end

function M.after()
    vim.api.nvim_create_user_command("BufferDelete", function()
        ---@diagnostic disable-next-line: missing-parameter
        local file_exists = vim.fn.filereadable(vim.fn.expand("%p"))
        local modified = vim.api.nvim_buf_get_option(0, "modified")

        if file_exists == 0 and modified then
            vim.notify("The file is not saved", "WARN", { title = "Buffer" })
            return
        end

        local force = not vim.bo.buflisted or vim.bo.buftype == "nofile"

        vim.cmd(force and "bd!" or string.format("bp | bd! %s", vim.api.nvim_get_current_buf()))
    end, {})
end

return M
