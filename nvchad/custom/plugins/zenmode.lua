local present, zen_mode = pcall(require, "zen-mode")

if not present then
  return
end

zen_mode.setup({
  require("zen-mode").setup {
    window = {
      width = 80,
      options = {
        number = true,
        relativenumber = true,
      }
    },
  }
})
