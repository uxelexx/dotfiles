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
    "prisma",
    "go",
    -- "bash",
    -- "graphql",
    -- "regex",
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

  view = {
    hide_root_folder = false,
  },

  renderer = {
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
    },
  },
}

M.mason = {
  ensure_installed = {
    -- lua stuff
    "lua-language-server",
    -- "stylua",

    -- web dev
    "css-lsp",
    "html-lsp",
    "typescript-language-server",
    -- "deno",
    "emmet-ls",
    "json-lsp",
    "tailwindcss-language-server",

    -- shell
    "shfmt",
    "shellcheck",
  },
}

M.nvimtree = {
  renderer = {
    icons = {
      glyphs = {
        default = "󰈚",
        symlink = "",
        folder = {
          default = "󰉋",
        },
      },
    },
  }
}


return M
