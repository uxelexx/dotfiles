local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    javascript = { "prettier" },
    javascriptreact = { "prettier" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
    markdown = { "prettier" },
    css = { "prettier" },
    scss = { "prettier" },
    sass = { "prettier" },
    html = { "prettier" },
    json = { "prettier" },
    jsonc = { "prettier" },
    sh = { "shfmt" },
    go = { "gofmt" },
  },
}

require("conform").setup(options)
