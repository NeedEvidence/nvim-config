return {
  {
    '3rd/image.nvim',
    enabled = false,
    lazy = true,
    vesrion = "1.1.0",
    config = function()
      require('image').setup({
        backend = 'kitty',
        integrations = {},
        max_width = 100,
        max_height = 12,
        max_height_window_percentage = math.huge,
        max_width_window_percentage = math.huge,
        window_overlap_clear_enabled = true,
        window_overlap_clear_ft_ignore = { "cmp_menu", "cmp_docs", "" },
      })
    end
  },
  {
    'benlubas/molten-nvim',
    version = "^1.0.0",
    enabled = false,
    init = function()
    end
  },
  {
    'GCBallesteros/jupytext.nvim',
    lazy = false,
    enabled = false,
    config = function()
      require('jupytext').setup({
        style = "markdown",
        output_extension = "md",
        force_ft = "markdown",
      })
    end,

  },
  {
    'quarto-dev/quarto-nvim',
    enabled = true,
    dependencies = {
      "jmbuhr/otter.nvim",
      "nvim-treesitter/nvim-treesitter",
    },
    ft = { "quarto", "markdown" },
    config = function()
      require('quarto').setup({
        lspFeatures = {
          -- NOTE: put whatever languages you want here:
          languages = { "r", "python", "rust" },
          chunks = "all",
          diagnostics = {
            enabled = true,
            triggers = { "BufWritePost" },
          },
          completion = {
            enabled = true,
          },
        },
        codeRunner = {
          enabled = true,
          default_method = "molten",
        }
      })

      local runner = require('quarto.runner')
      vim.keymap.set("n", "<leader>rc", runner.run_cell, { desc = "run cell", silent = true })
      vim.keymap.set("n", "<leader>rA", runner.run_above, { desc = "run cell and above", silent = true })
      vim.keymap.set("n", "<leader>ra", runner.run_all, { desc = "run all cells", silent = true })
      vim.keymap.set("n", "<leader>rl", runner.run_line, { desc = "run line", silent = true })
      vim.keymap.set("v", "<leader>r", runner.run_range, { desc = "run visual range", silent = true })
      vim.keymap.set("n", "<leader>RA", function()
        runner.run_all(true)
      end, { desc = "run all cells of all languages", silent = true })
    end
  },
}
