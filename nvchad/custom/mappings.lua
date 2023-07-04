---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["H"] = { "^", "Line start" },
    ["L"] = { "$", "Line end" },
    ["cL"] = { "c$", "Change to line end"},

    ["n"] = {"nzzzn", "Center while search"},
    ["N"] = {"Nzzzn", "Center while search backwards"},

    ["<C-a>"] = { "gg<s-v>G", "Select all" },

    ["<C-d>"] = { "<C-d>zz", "Half screen down and center" },
    ["<C-u>"] = { "<C-u>zz", "Half screen down and center" },

    ["<leader>oi"] = { ":OrganizeImports <CR>", "Organize imports" },

    ["<leader>lg"] = { ":LazyGit<CR>", "Open LazyGit", opts = { silent = true } },

    ["<leader>zz"] = { ":ZenMode <CR>", "Toggle ZenMode", opts = { silent = true } },
  },

  v = {
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line up" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line down" },

    ["H"] = {"^", "Line start"},
    ["L"] = {"$", "Line end"},

    ["<leader>c"] = { '"*y', "Yank to clipboard"},

    ["y"] = { "ygv<ESC>", "Yank without moving" }
  },

  i = {
    ["jj"] = { "<ESC>", "Exit insert mode" },

    ["<C-s>"] = { "<cmd> w <CR><ESC>", "Save file and escape" },
  }
}

-- Plugins remaps

M.lspconfig = {

  n = {
    ["<A-d>"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },
  },
}

return M
