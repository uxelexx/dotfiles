local overrides = require "custom.configs.overrides"

--@type NvPluginSpec[]

return {
  {
    "hrsh7th/nvim-cmp",
    opts = overrides.cmp,

    dependencies = {
      {
        -- snippet plugin
        "L3MON4D3/LuaSnip",
        config = function(_, opts)
          -- load default luasnip config
          require("plugins.configs.others").luasnip(opts)

          -- local luasnip = require "luasnip"
          -- luasnip.filetype_extend("javascriptreact", { "html" })
          -- luasnip.filetype_extend("typescriptreact", { "html" })
          require("luasnip/loaders/from_vscode").lazy_load()
        end,
      },

      -- ai based completion
      {
        "Exafunction/codeium.nvim",
        config = function()
          require("codeium").setup()
        end,
      },
    },
  },

  {
    "neovim/nvim-lspconfig",
    dependencies = {},

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "stevearc/conform.nvim",
    config = function()
      require "custom.configs.conform"
    end,
  },

  {
    "NvChad/nvim-colorizer.lua",
    config = function()
      require("colorizer").setup {
        user_default_options = {
          hsl_fn = true, -- CSS hsl() and hsla() functions
        },
      }
    end,
  },

  { "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },
  { "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },
  { "williamboman/mason.nvim", opts = overrides.mason },

  -------------------------- custom plugins -----------------------------

  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    config = function()
      require("nvim-surround").setup {
        -- Configuration here, or leave empty to use defaults
      }
    end,
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = "LazyGit",
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require "custom.configs.zenmode"
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    event = "InsertEnter",
    config = function()
      require "custom.configs.autosave"
    end,
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    event = "InsertEnter",
    dependencies = "nvim-treesitter",
    opts = { max_lines = 2 },
  },

  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require "custom.configs.lspsaga"
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons", -- optional
    },
  },

  {
    "folke/trouble.nvim",
    cmd = "Trouble",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      require("trouble").setup()
    end,
  },
}

-- Old codeium
--[[
{
"Exafunction/codeium.nvim",
event = "BufEnter",
config = function()
  require("codeium").setup()
end,
config = function()
  vim.keymap.set("i", "<C-y>", function()
    return vim.fn["codeium#Accept"]()
  end, { expr = true })
  vim.keymap.set("i", "<C-]>", function()
    return vim.fn["codeium#CycleCompletions"](1)
  end, { expr = true })
  vim.keymap.set("i", "<C-.>", function()
    return vim.fn["codeium#CycleCompletions"](-1)
  end, { expr = true })
end,
}, 
]]
