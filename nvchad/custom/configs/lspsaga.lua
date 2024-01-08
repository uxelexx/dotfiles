local lspsaga = require "lspsaga"

local options = {
  symbol_in_winbar = {
    enable = false,
  },
  ui = {
    border = "rounded",
    code_action = " ｷ",
  },
  outline = {
    layout = "float",
  },
  lightbulb = {
    -- enable = false,
    virtual_text = false,
  },
}

lspsaga.setup(options)
