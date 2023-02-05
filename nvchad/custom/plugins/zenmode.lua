local present, zen_mode = pcall(require, "zen-mode")

if not present then
  return
end

local options = {
  cmd = "ZenMode",
  window = {
    width = 80,
    options = {
      number = true,
      relativenumber = true,
    }
  },
}

zen_mode.setup(options)
