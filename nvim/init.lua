-- bootstrap lazy.nvim, LazyVim and your plugins
require("config.lazy")

-- ###################################
-- Knap keys for text live compiling #
-- ###################################
-- set shorter name for keymap function
local kmap = vim.keymap.set
vim.api.nvim_set_option("clipboard", "unnamed")
require("lazyvim").setup({ colorscheme = "desert" })
require("codesnap").setup({
  mac_window_bar = false,
  title = "CodeSnap.nvim",
  code_font_family = "CaskaydiaCove Nerd Font",
  watermark_font_family = "Pacifico",
  watermark = "",
  bg_theme = "default",
  breadcrumbs_separator = "/",
  has_breadcrumbs = true,
  save_path = "/home/filippo/Pictures/CodeSnap/code.png",
})
