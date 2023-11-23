local overrides = require "custom.configs.overrides"

--@type NvPluginSpec[]

return {
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

  { "nvim-tree/nvim-tree.lua", opts = overrides.nvimtree },
  { "nvim-treesitter/nvim-treesitter", opts = overrides.treesitter },
  { "williamboman/mason.nvim", opts = overrides.mason },

  -------------------------- custom plugins -----------------------------

  {
    "windwp/nvim-ts-autotag",
    event = "InsertEnter",
  },

  {
    "kylechui/nvim-surround",
    version = "*", -- Use for stability; omit to use `main` branch for the latest features
    event = "VeryLazy",
    config = function()
      require("nvim-surround").setup({
        -- Configuration here, or leave empty to use defaults
      })
    end
  },

  {
    "kdheepak/lazygit.nvim",
    lazy = true,
    cmd = "LazyGit",
  },

  {
    "folke/zen-mode.nvim",
    cmd = "ZenMode",
    lazy = true,
    config = function()
      require "custom.configs.zenmode"
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
    event = "InsertEnter",
    dependencies = "nvim-treesitter",
    opts = { max_lines = 2, }
  },

  {
    "nvimdev/lspsaga.nvim",
    event = "LspAttach",
    config = function()
      require "custom.configs.lspsaga"
    end,
    dependencies = {
      "nvim-treesitter/nvim-treesitter", -- optional
      "nvim-tree/nvim-web-devicons"     -- optional
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

  {
    "Exafunction/codeium.vim",
    event = "InsertEnter",
    config = function ()
      vim.keymap.set('i', '<C-y>', function () return vim.fn['codeium#Accept']() end, { expr = true })
      vim.keymap.set('i', '<c-]>', function() return vim.fn['codeium#CycleCompletions'](1) end, { expr = true })
      vim.keymap.set('i', '<c-.>', function() return vim.fn['codeium#CycleCompletions'](-1) end, { expr = true })
    end
  },

  -- {
  --     "ray-x/go.nvim",
  --     dependencies = {  -- optional packages
  --         "ray-x/guihua.lua",
  --         "neovim/nvim-lspconfig",
  --         "nvim-treesitter/nvim-treesitter",
  --     },
  --     config = function()
  --         require("go").setup()
  --     end,
  --     event = {"CmdlineEnter"},
  --     ft = {"go", "gomod"},
  --     build = ":lua require("go.install").update_all_sync()" -- if you need to install/update all binaries
  -- }
}

