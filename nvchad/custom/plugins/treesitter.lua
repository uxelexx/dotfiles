local present, treesitter = pcall(require, "nvim-treesitter.configs")

if not present then
  return
end


local options = {
  autotag = {
    enable = true,
  },

  override_options = {
    ensure_installed = {
      -- "regex",
      -- "graphql",
      "css",
      "html",
      "javascript",
      "json",
      "lua",
      "tsx",
      "typescript",
      "prisma",
    },
  },
}

treesitter.setup(options)
