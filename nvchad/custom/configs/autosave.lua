local auto_save = require "auto-save"

local options = {
  execution_message = {
    message = function() -- message to print on save
      return ("󰄳 file autosaved at " .. vim.fn.strftime("%H:%M:%S"))
    end,
    dim = 0.18, -- dim the color of `message`
    cleaning_interval = 750, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
  },
  trigger_events = {"InsertLeave", "TextChanged"},
  condition = function(buf)
    local fn = vim.fn
    local utils = require("auto-save.utils.data")

    if
      fn.getbufvar(buf, "&modifiable") == 1 and
      utils.not_in(fn.getbufvar(buf, "&filetype"), {}) then
      return true -- met condition(s), can save
    end
    return false -- can't save
  end,
  write_all_buffers = false, -- write all buffers when the current one meets `condition`
  debounce_delay = 135, -- saves the file at most every `debounce_delay` milliseconds
}

auto_save.setup(options)
