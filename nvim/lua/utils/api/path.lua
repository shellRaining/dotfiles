-- 对路径的处理函数

local path = {
	-- return the concatenated path
	join = function (...)
	    return table.concat(vim.tbl_flatten({ ... }), "/")
	end,

	-- return whether the path exists
	exist = function (p)
	    return vim.fn.filereadable(p) == 1
	end
}

return path
