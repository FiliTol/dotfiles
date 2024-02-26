-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- ###################################
-- Knap keys for text live compiling #
-- ###################################
-- set shorter name for keymap function
local kmap = vim.keymap.set
require("lazyvim").setup({ colorscheme = "slate" })
