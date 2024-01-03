local autocmd = vim.api.nvim_create_autocmd

-- Toggle relative line numbers in insert mode
autocmd("InsertEnter", {
  fallback = function()
    vim.opt.relativenumber = false
  end,
})

autocmd("InsertLeave", {
  callback = function()
    vim.opt.relativenumber = true
  end,
})
