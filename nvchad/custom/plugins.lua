local overrides = require "custom.configs.overrides"

---@type NvPluginSpec[]
return {

  {
    "folke/which-key.nvim",
    enabled = true,
  },

  {
    "neovim/nvim-lspconfig",
    event = "VeryLazy",
    dependencies = {
      "jose-elias-alvarez/null-ls.nvim",
      config = function()
        require "custom.configs.null-ls"
      end,
    },

    config = function()
      require "plugins.configs.lspconfig"
      require "custom.configs.lspconfig"
    end,
  },

  {
    "nvim-tree/nvim-tree.lua",
    opts =  overrides.nvimtree
  },

  {
    "nvim-treesitter/nvim-treesitter",
    opts =  overrides.treesitter,
  },

  {
    "williamboman/mason.nvim",
    opts =  overrides.mason
  },

  -------------------------- custom plugins -----------------------------

  {
    "tpope/vim-surround",
    event = "InsertEnter",
  },

  {
    "kdheepak/lazygit.nvim",
    cmd = 'LazyGit',
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    config = function()
      require "custom.configs.zenmode"
    end,
  },

  {
    "jose-elias-alvarez/null-ls.nvim",
    dependencies = 'nvim-lspconfig',
    config = function()
      require "custom.configs.null-ls"
    end,
  },

  {
    "Pocco81/auto-save.nvim",
    event = "InsertEnter",
    config = function()
      require "custom.configs.autosave"
    end
  },

  {
    "nvim-treesitter/nvim-treesitter-context",
    -- lazy = false,
    event = "InsertEnter",
    dependencies = 'nvim-treesitter',
    opts = {  }
  },

  {
    "windwp/nvim-ts-autotag",
    -- lazy = false,
    event = "InsertEnter",
    config = function()
      require("nvim-ts-autotag").setup()
    end,
  },
}

