local zen_mode = require "zen-mode"

local options = {
  window = {
    width = 80,
    options = {
      number = true,
      relativenumber = true,
    }
  },
}

zen_mode.setup(options)
