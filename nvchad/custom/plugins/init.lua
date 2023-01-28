return {
  colorizer = true,
  telescope_media = true,

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["nvim-treesitter/nvim-treesitter-context"] = {},

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = {
      git = {
        enable = true,
        ignore = false,
      },
      renderer = {
        icons = {
          show = {
            file = true,
            folder = true,
            folder_arrow = true,
            git = true,
          },
        },
      },
    }
  },

  ["tpope/vim-surround"] = {},

  ["windwp/nvim-ts-autotag"] = {
    config = function()
      require("nvim-ts-autotag").setup {}
    end,
  },

  ["Pocco81/auto-save.nvim"] = {
    config = function()
      require "custom.plugins.autosave"
    end
  },

  ["folke/zen-mode.nvim"] = {
    cmd = "ZenMode",
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

  ["neovim/nvim-lspconfig"] = {
    config = function()
      require "plugins.configs.lspconfig"
      require "custom.plugins.lspconfig"
    end,
  },

  ["nvim-treesitter/nvim-treesitter"] = {
    autotag = {
      enable = true,
    },

    override_options = {
      ensure_installed = {
        "bash",
        "css",
        "graphql",
        "html",
        "javascript",
        "json",
        "lua",
        "regex",
        "tsx",
        "typescript",
        "prisma",
      },
    },
  },
}
