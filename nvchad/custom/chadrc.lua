-- First read our docs (completely) then check the example_config repo

local M = {}

M.ui = {
  theme = "catppuccin",
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
    },

    ["jose-elias-alvarez/typescript.nvim"] = {
      config = function ()
        require "custom.plugins.typescript"
      end,
    },

    ["windwp/nvim-ts-autotag"] = {
      config = function()
        require("nvim-ts-autotag").setup {}
      end,
    },

    ["Pocco81/auto-save.nvim"] = {
      config = function()
        require("auto-save").setup {
          execution_message = {
            message = function() -- message to print on save
              return ("AutoSave: saved at " .. vim.fn.strftime("%H:%M:%S"))
            end,
            dim = 0.18, -- dim the color of `message`
            cleaning_interval = 1250, -- (milliseconds) automatically clean MsgArea after displaying `message`. See :h MsgArea
          },
          trigger_events = {"InsertLeave", "TextChanged"},
        }
      end
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
      -- setup = function()
      --   require("core.lazy_load").on_file_open "nvim-lspconfig"
      -- end,
      config = function()
        require "plugins.configs.lspconfig"
        require "custom.plugins.lspconfig"
      end,
    },
  },

  override = {
    ["nvim-treesitter/nvim-treesitter"] = {
      autotag = {
        enable = true,
      },

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
        "prisma",
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
