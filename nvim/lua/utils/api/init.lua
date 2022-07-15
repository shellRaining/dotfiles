-- 初始化api中的内容

local icons = require("utils.icons")

local api = {
	hl = require("utils.api.hl"),
	map = require("utils.api.map"),
	path = require("utils.api.path"),
}

function api.safe_load(M)
	if not M.safe_requires then
		return
	end
end

function api.get_icon(name, fill)
end

return api

