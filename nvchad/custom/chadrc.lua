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
    -- dashboard = true,
    telescope_media = true,
  },

  user = {
    ["goolord/alpha-nvim"] = {
      disable = false,
    },

    ["folke/zen-mode.nvim"] = {
      cmd = "ZenMode",
      config = function()
        require("zen-mode").setup {
          window = {
            width = 100, -- width will be 85% of the editor width
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
