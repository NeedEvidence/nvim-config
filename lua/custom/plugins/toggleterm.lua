return {
  'akinsho/toggleterm.nvim',
  enabled = false,
  config = function()
    require('toggleterm').setup()
    vim.keymap.set('n', '<S-t>', function()
      vim.cmd 'ToggleTerm'
    end, { desc = 'Horizontal Floating Terminal' })
  end,
}
