return {
	'stevearc/oil.nvim',
	lazy = false,
	dependencies = { { "echasnovski/mini.icons", opts = {} } },
	config = function()
		require("oil").setup({
		})
		vim.keymap.set("n","<leader>e","<cmd>Oil --float<cr>")
	end,
}
