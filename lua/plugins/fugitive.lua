return {

	"tpope/vim-fugitive",
	lazy = false,
	config=function()
		vim.keymap.set("n","<leader>ga","<cmd>Git add<cr>")
		vim.keymap.set("n","<leader>gc","<cmd>Git commit<cr>")
	end
}
