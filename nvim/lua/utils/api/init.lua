-- 初始化api中的内容

local icons = require("utils.icons")

local api = {
    hl = require("utils.api.hl"),
    map = require("utils.api.map"),
    path = require("utils.api.path"),
}

-- safely load all dependent plugins
-- 该函数先验证是否为需要的参数，然后验证插件可用性，如果不可用通过notify反馈并停止插件加载，否则加载该插件进参数中
function api.safe_load(M)
    if not M.safe_requires then
        vim.notify(string.format("the plugin do not have conf files"), "WARN", { title = "plugin" })
        return
    end
    for _, plugin_table in ipairs(M.safe_requires) do
        local load_name = plugin_table[1]
        local plug_name = plugin_table[2] or load_name


        local ok, plugin = pcall(require, load_name)
        if not ok then
            vim.notify(string.format("Failed to load plugin: %s", load_name), "WARN", { title = "plugin" })
            return
        end

        M[plug_name] = plugin
    end
end

-- get the icon, if fill is true, return the filled icon (2 characters wide), otherwise return the original icon (1 character width)
function api.get_icons(name, fill)
    if not fill then
        return icons[name]
    end

    local fill_icons = {}
    for icon_name, icon_value in pairs(icons[name]) do
        fill_icons[icon_name] = string.format("%s ", icon_value)
    end

    return fill_icons
end

return api
