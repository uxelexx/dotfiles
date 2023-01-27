local present, lspconfig = pcall(require, "lspconfig")

if not present then
  return
end

-- custom.plugins.lspconfig
local on_attach = require("plugins.configs.lspconfig").on_attach
local capabilities = require("plugins.configs.lspconfig").capabilities

local servers = {
  "html",
  "cssls",
  "cssmodules_ls",
  "tsserver",
  "svelte",
  "emmet_ls",
  "jsonls",
  "prismals",
  "graphql",
  "marksman",
  "tailwindcss",
  "eslint",
}

for _, lsp in ipairs(servers) do
  lspconfig[lsp].setup {
    on_attach = on_attach,
    capabilities = capabilities,
  }
end

-- OrganizeImports
local function organize_imports()
  local params = {
    command = "_typescript.organizeImports",
    arguments = {vim.api.nvim_buf_get_name(0)},
    title = ""
  }
  vim.lsp.buf.execute_command(params)
end

lspconfig.tsserver.setup {
  on_attach = on_attach,
  capabilities = capabilities,
  commands = {
    OrganizeImports = {
      organize_imports,
      description = "Organize Imports"
    }
  }
}

