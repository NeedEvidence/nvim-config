return {
  'stevearc/oil.nvim',
  dependencies = { 'nvim-tree/nvim-web-devicons' },
  opts = {},
  config = function()
    require('oil').setup()
    vim.keymap.set('n', '<leader>e', function()
      vim.cmd 'Oil --float'
    end, { desc = 'Open file explorer' })
  end,
}
