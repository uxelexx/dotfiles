
local lspsaga = require "lspsaga"

local options = {
    symbol_in_winbar = {
        enable = false,
    },
    ui = {
        border = 'rounded',
    },
    outline = {
        layout = 'float'
    },
    lightbulb = {
        enable = false
    }
}

lspsaga.setup(options)
