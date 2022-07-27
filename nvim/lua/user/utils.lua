local api = {}

local joinPath = function(...)
  return table.concat(vim.tbl_flatten({ ... }), "/")
end

local existPath = function(p)
  return vim.fn.filereadable(p) == 1
end

api.snippets_directory = joinPath(vim.fn.stdpath("config"), "snippets")

return api
