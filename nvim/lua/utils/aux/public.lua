local aux_public = {}

-- 获取所有窗口中buf的文件类型
function aux_public.get_all_win_buf_ft()
    local result = {}
    local wins = vim.api.nvim_list_wins()

    for _, win_id in ipairs(wins) do
        if vim.api.nvim_win_is_valid(win_id) then
            local buf_id = vim.api.nvim_win_get_buf(win_id)
            table.insert(result, {
                win_id = win_id,
                buf_id = buf_id,
                buf_ft = vim.api.nvim_buf_get_option(buf_id, "filetype"),
            })
        end
    end

    return result
end

-- 切换窗口边栏的显示状态
function aux_public.toggle_sidebar(target_ft)
    local offset_ft = {
        "NvimTree",
        "undotree",
        "dbui",
        "spectre_panel",
    }
    for _, opts in ipairs(aux_public.get_all_win_buf_ft()) do
        if opts.buf_ft ~= target_ft and vim.tbl_contains(offset_ft, opts.buf_ft) then
            vim.api.nvim_win_close(opts.win_id, true)
        end
    end
end

return aux_public
