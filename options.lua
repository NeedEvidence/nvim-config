vim.cmd "set smarttab"
vim.cmd "set tabstop=2"
vim.cmd "set softtabstop=2"
vim.cmd "set shiftwidth=2"
vim.cmd "colorscheme kanagawa"
vim.cmd "set number"
vim.cmd "set relativenumber"
vim.cmd "set hlsearch"
vim.keymap.set('n', '<Esc>', '<cmd>nohlsearch<CR>')
vim.cmd "set history=1000"
vim.cmd "set autoindent"
vim.opt.mouse = 'a'
vim.opt.undofile = true
vim.opt.ignorecase = true
vim.opt.smartcase = true
vim.opt.timeoutlen = 300
vim.api.nvim_create_autocmd('TextYankPost', {
  desc = 'Highlight when yanking (copying) text',
  group = vim.api.nvim_create_augroup('kickstart-highlight-yank', { clear = true }),
  callback = function()
    vim.highlight.on_yank()
  end,
})
vim.opt.signcolumn = 'yes'
