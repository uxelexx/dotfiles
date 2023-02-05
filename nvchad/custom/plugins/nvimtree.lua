local present, nvimtree = pcall(require, "nvim-tree")

if not present then
  return
end


local options = {
  override_options = {
    git = {
      enable = true,
      ignore = false,
    },
      renderer = {
      icons = {
        show = {
          git = true,
        },
      },
    },
  },
}


nvimtree.setup(options)
