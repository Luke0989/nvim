local highlight = require("vim.highlight")

vim.api.nvim_create_augroup("YankHighlight", { clear = true })
vim.api.nvim_create_autocmd("TextYankPost", {
  group = "YankHighlight",
  pattern = "*",
  callback = function()
    highlight.on_yank({ higroup = "IncSearch", timeout = 150 })
  end,
})
