return {
  colorizer = true,
  telescope_media = true,

  ["prisma/vim-prisma"] = {},

  ["nvim-treesitter/nvim-treesitter-context"] = {},

  ["tpope/vim-surround"] = {},

  ["kdheepak/lazygit.nvim"] = {},

  ["goolord/alpha-nvim"] = {
    disable = false,
  },

  ["NvChad/ui"] = {
    override_options = {
      statusline = {
        separator_style = "round",
      },
    },
  },

  ["nvim-tree/nvim-tree.lua"] = {
    override_options = {
      git = {
        enable = true,
        ignore = false,
      },
      renderer = {
        icons = {
          show = {
            git = true,
          },
        },
      },
    },
  },

  ["windwp/nvim-ts-autotag"] = {
    after = "nvim-treesitter",
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
        "css",
        "html",
        "javascript",
        "json",
        "lua",
        "tsx",
        "typescript",
        "prisma",
        -- "bash",
        -- "graphql",
        -- "regex",
      },
    },
  },
}
