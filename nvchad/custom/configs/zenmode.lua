local zen_mode = require "zen-mode"

local options = {
  window = {
    width = 100,
    options = {
      number = true,
      relativenumber = true,
    },
  },
  plugins = {
    options = {
      showcmd = false, -- disables the command in the last line of the screen
    },
    gitsigns = { enabled = true }, -- disables git signs
  },
}

zen_mode.setup(options)
