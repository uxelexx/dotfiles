---@type MappingsTable
local M = {}

M.general = {
  n = {
    ["H"] = { "^", "Line start" },
    ["L"] = { "$", "Line end" },
    ["cL"] = { "c$", "Change to line end" },

    ["n"] = { "nzzzn", "Center while search" },
    ["N"] = { "Nzzzn", "Center while search backwards" },

    ["<C-a>"] = { "gg<s-v>G", "Select all" },

    ["<C-d>"] = { "<C-d>zz", "Half screen down and center" },
    ["<C-u>"] = { "<C-u>zz", "Half screen down and center" },

    ["<leader>oi"] = { ":OrganizeImports <CR>", "Organize imports" },

    ["<leader>lg"] = { ":LazyGit<CR>", "Open LazyGit", opts = { silent = true } },

    ["<leader>zz"] = { ":ZenMode <CR>", "Toggle ZenMode", opts = { silent = true } },
    ["<leader>ca"] = { ":Lspsaga code_action <CR>", "LSP saga code action" },
    ["<leader>gd"] = { ":Lspsaga finder<CR>", "LSP saga finder" },
    ["<leader>gp"] = { ":Lspsaga peek_definition<CR>", "LSP peek definition" },

    ["<leader>q"] = { ":Trouble<CR>", "Folke trouble" },

    ["<leader>tt"] = {
      function()
        require("base46").toggle_transparency()
      end,
      "toggle transparency",
    },

    ["<leader>ct"] = {
      function()
        require("nvchad.tabufline").closeAllBufs()
      end,
      "Close all buffers",
    },
  },

  v = {
    ["K"] = { ":m '<-2<CR>gv=gv", "Move line up" },
    ["J"] = { ":m '>+1<CR>gv=gv", "Move line down" },

    ["H"] = { "^", "Line start" },
    ["L"] = { "$", "Line end" },

    ["<leader>c"] = { '"*y', "Yank to clipboard" },

    ["y"] = { "ygv<ESC>", "Yank without moving" },
  },

  i = {
    ["jj"] = { "<ESC>", "Exit insert mode" },

    ["<C-s>"] = { "<cmd> w <CR><ESC>", "Save file and escape" },
  },
}

-- Plugins remaps

M.lspconfig = {
  n = {
    ["<A-d>"] = {
      function()
        vim.diagnostic.open_float { border = "rounded" }
      end,
      "Floating diagnostic",
    },
  },
}

M.lsp = {
  n = {
    ["<leader>fm"] = {
      function()
        require("conform").format { async = true, lsp_fallback = true }
      end,
      "format with conform",
    },
  },
}

return M
