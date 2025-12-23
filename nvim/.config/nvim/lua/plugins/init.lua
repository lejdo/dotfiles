
-- lua/plugins/init.lua
local plugins = {}

-- add mason first
table.insert(plugins, require("plugins.mason"))

-- add the rest
table.insert(plugins, require("plugins.lsp"))
table.insert(plugins, require("plugins.treesitter"))
table.insert(plugins, require("plugins.telescope"))
table.insert(plugins, require("plugins.completion"))
table.insert(plugins, require("plugins.colorscheme"))

return plugins

