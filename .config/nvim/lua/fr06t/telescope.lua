local status_ok, telescope = pcall(require, "telescope")
if not status_ok then
  return
end

local actions = require "telescope.actions"

telescope.setup {
  defaults = {
	hidden = "true",
    path_display = { "smart" },
	},
  pickers = {
  },
  extensions = {
  },
}
