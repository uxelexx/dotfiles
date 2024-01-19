-- overriding default plugin configs!
local M = {}

local border = {
  { "╭", "CmpBorder" },
  { "─", "CmpBorder" },
  { "╮", "CmpBorder" },
  { "│", "CmpBorder" },
  { "╯", "CmpBorder" },
  { "─", "CmpBorder" },
  { "╰", "CmpBorder" },
  { "│", "CmpBorder" },
}

M.treesitter = {
  ensure_installed = {
    "css",
    "html",
    "javascript",
    "json",
    "lua",
    "tsx",
    "typescript",
    "go",
    -- "markdown",
    -- "prisma",
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
    dotfiles = true,
    custom = { "node_modules" },
  },
  git = {
    enable = true,
    ignore = false,
  },
  renderer = {
    -- root_folder_label = true,
    highlight_git = true,
    icons = {
      show = {
        git = true,
      },
      glyphs = {
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

M.cmp = {
  window = {
    documentation = { border = border, winhighlight = "Normal:CmpNormal" },
  },
  sources = {
    -- trigger_characters is for unocss lsp
    { name = "nvim_lsp" },
    { name = "path" },
    { name = "luasnip" },
    { name = "buffer" },
    { name = "codeium" },
    { name = "nvim_lua" },
  },
  experimental = {
    ghost_text = true,
  },
}

return M
