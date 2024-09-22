return {
  'tpope/vim-fugitive',
  config = function()
    vim.keymap.set('n', '<leader>ga', function()
      vim.cmd 'Git add .'
    end, { desc = 'Git add .' })
    vim.keymap.set('n', '<leader>gc', function()
      vim.cmd 'Git commit'
    end, { desc = 'Git commit' })
  end,
}
