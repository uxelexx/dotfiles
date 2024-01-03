-- overriding default plugin configs!
local M = {}

M.treesitter = {
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "tsx",
    "typescript",
    "markdown",
    -- "prisma",
    "go",
    -- "bash",
    -- "graphql",
    -- "regex",
  },
  autotag = {
    enable = true,
  },
}

M.nvimtree = {
  filters = {
    custom = { "node_modules" },
  },

  git = {
    enable = true,
    ignore = false,
  },

  -- view = {
  --   hide_root_folder = false,
  -- },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "󰉋",
        },
      },
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    "stylua",

    -- web dev
    "css-lsp",
    "eslint-lsp",
    "html-lsp",
    "typescript-language-server",

    -- "emmet-ls",
    "prettier",
    "json-lsp",
    "tailwindcss-language-server",

    -- shell
    -- "shfmt",
    -- "shellcheck",
  },
}

return M
