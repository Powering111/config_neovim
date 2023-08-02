vim.opt.mouse='a'

vim.opt.number = true
vim.opt.relativenumber = true

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.hlsearch = true

vim.opt.autoindent = true
vim.opt.wrap = true
vim.opt.breakindent = true

vim.opt.tabstop = 2
vim.opt.softtabstop = 2
vim.opt.shiftwidth = 2
vim.opt.expandtab = true

vim.opt.showmode=false
vim.opt.signcolumn="yes"
vim.opt.cursorline=true

vim.opt.scrolloff=5

vim.opt.timeoutlen=500
vim.api.nvim_create_autocmd('TextYankPost', {
  callback = function()
    vim.highlight.on_yank({
      higroup = 'IncSearch',
      timeout = 300
    })
  end
})


vim.cmd.colorscheme "catppuccin-mocha"
