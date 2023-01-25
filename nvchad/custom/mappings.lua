local M = {

}

M.general = {
  n = {
    ["H"] = { "^", "line start" },
    ["L"] = { "$", "line end" },

    -- toggle ZenMode
    ["<leader>zz"] = { ":ZenMode <CR>", "toggle ZenMode", opts = { silent = true } },

    -- center while search next
    ["n"] = {"nzzzn", "center"},
    ["N"] = {"Nzzzn", "center"},

    -- select all
    ["<C-a>"] = { "gg<s-v>G", "Select all" },

    -- center while seach 
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },

    -- organize imports
    ["<leader>oi"] = { ":OrganizeImports <CR>" }
  },

  v = {
    --move lines
    ["K"] = { ":m '<-2<CR>gv=gv", "move line up" },
    ["J"] = { ":m '>+1<CR>gv=gv", "move line down" },

    ["H"] = {"^", "line start"},
    ["L"] = {"$", "line end"},

    -- yank to clipboard
    ["<leader>c"] = { '"*y', "yank to clipboard"},

  },

  i = {
    -- exit insert mode
    ["jj"] = { "<ESC>", "Escape insert mode" },

      -- function()
      --   vim.lsp.buf.format { async = true }
      -- end,

    -- save and exit insert mode
    ["<C-s>"] = { "<cmd> w <CR><ESC>", "save file and escape" },
  }
}

M.telescope = {
  plugin = true,

  n = {
    -- find
    ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
  }
}
return M
