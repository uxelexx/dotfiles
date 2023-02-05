local M = {}

M.general = {
  n = {
    ["H"] = { "^", "line start" },
    ["L"] = { "$", "line end" },

    -- center while search next
    ["n"] = {"nzzzn", "center"},
    ["N"] = {"Nzzzn", "center"},

    ["<C-a>"] = { "gg<s-v>G", "Select all" }, -- select all

    -- center while seach 
    ["<C-d>"] = { "<C-d>zz" },
    ["<C-u>"] = { "<C-u>zz" },

    -- organize imports
    ["<leader>oi"] = { ":OrganizeImports <CR>" },

    -- lazygit
    ["<leader>lg"] = { ":LazyGit<CR>", "Open LazyGit", opts = { silent = true } },

    -- zenmode
    ["<leader>zz"] = { ":ZenMode <CR>", "toggle ZenMode", opts = { silent = true } },
  },

  v = {
    --move lines
    ["K"] = { ":m '<-2<CR>gv=gv", "move line up" },
    ["J"] = { ":m '>+1<CR>gv=gv", "move line down" },

    ["H"] = {"^", "line start"},
    ["L"] = {"$", "line end"},

    -- yank to clipboard
    ["<leader>c"] = { '"*y', "yank to clipboard"},

    ["y"] = { "ygv<ESC>", "yank without moving" }

  },

  i = {
    -- exit insert mode
    ["jj"] = { "<ESC>", "Escape insert mode" },

    -- save and exit insert mode
    ["<C-s>"] = { "<cmd> w <CR><ESC>", "save file and escape" },
  }
}

-- Plugins remaps

M.lspconfig = {
  plugin = true,

  n = {
    ["<A-d>"] = {
      function()
        vim.diagnostic.open_float()
      end,
      "floating diagnostic",
    },
  },
}

-- M.telescope = {
--   plugin = true,
--
--   n = {
--     ["<leader>ff"] = { "<cmd> Telescope find_files <CR>", "find files" },
--   }
-- }

do return M end
