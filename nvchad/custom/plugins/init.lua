local overrides = require "custom.plugins.overrides"

return {
  ["goolord/alpha-nvim"] = {
    disable = false,
    override_options = overrides.alpha,
  },

  ["folke/which-key.nvim"] = {
    disable = false,
  },

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
      },
    },
  },

  ["nvim-tree/nvim-tree.lua"] = { override_options = overrides.nvimtree },
  ["nvim-treesitter/nvim-treesitter"] = { override_options =  overrides.treesitter },
  ["williamboman/mason.nvim"] = { override_options = overrides.mason },

  -------------------------------- custom ------------------------------------

  ["tpope/vim-surround"] = {},

  ["kdheepak/lazygit.nvim"] = {},

  ["j-hui/fidget.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      local present, fidget = pcall(require, "fidget")

      if present then
        fidget.setup()
      end
    end,
  },

  ["folke/zen-mode.nvim"] = {
    config = function()
      require "custom.plugins.zenmode"
    end,
  },

  ["jose-elias-alvarez/null-ls.nvim"] = {
    after = "nvim-lspconfig",
    config = function()
      require "custom.plugins.null-ls"
    end,
  },

  ["Pocco81/auto-save.nvim"] = {
    config = function()
      require "custom.plugins.autosave"
    end
  },

  ["nvim-treesitter/nvim-treesitter-context"] = {
    after = "nvim-treesitter",
    config = function()
      local present, treesitter_context = pcall(require, "nvim-treesitter-context")

      if present then
        treesitter_context.setup()
      end
    end,
  },

  ["windwp/nvim-ts-autotag"] = {
    ft = { "html", "javascriptreact", "typescriptreact" },
    after = "nvim-treesitter",
    config = function()
      local present, autotag = pcall(require, "nvim-ts-autotag")

      if present then
        autotag.setup()
      end
    end,
  },
}
