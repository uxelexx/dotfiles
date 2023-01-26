-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "nightfox",
  transparency = true,
  theme_toggle = { "catppuccin", "nightfox" },
}


M.plugins = {
  status = {
    colorizer = true,
    telescope_media = true,
  },

  user = {
    ["goolord/alpha-nvim"] = {
      disable = false,
    },

    ["tpope/vim-surround"] = {
      -- config = function ()
      --   require("vim-surround").setup {}
      -- end,
    },

    ["windwp/nvim-ts-autotag"] = {
      config = function()
        require "custom.plugins.ts-autotag"
      end
    },

    ["nvim-treesitter/nvim-treesitter"] = {
      config = function()
        require "custom.plugins.treesitter"
      end,
    },

    ["folke/zen-mode.nvim"] = {
      cmd = "ZenMode",
      config = function()
        require("zen-mode").setup {
          window = {
            width = 80,
            options = {
              number = true,
              relativenumber = true,
            }
          },
        }
      end,
    },

    ["jose-elias-alvarez/null-ls.nvim"] = {
      after = "nvim-lspconfig",
      config = function()
        require "custom.plugins.null-ls"
      end,
    },

    ["neovim/nvim-lspconfig"] = {
      opt = true,
      setup = function()
        require("core.lazy_load").on_file_open "nvim-lspconfig"
      end,
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },
  },

  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      ensure_installed = {
        "bash",
        "comment",
        "cpp",
        "css",
        "graphql",
        "html",
        "javascript",
        "json",
        "lua",
        "regex",
        "tsx",
        "typescript",
        "vim",
        "yaml",
      },
    },
  },

  options = {
    lspconfig = {
      setup_lspconf = "custom.plugins.lspconfig",
    },
  },

}

M.mappings = require "custom.mappings"
return M
