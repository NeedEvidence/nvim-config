return {
	"ThePrimeagen/harpoon",
	config = function()
		require("harpoon").setup({
			tmux_autoclose_windows = true,
		})
		vim.keymap.set("n", "<leader>hh", [[<cmd>:lua require("harpoon.mark").add_file()<cr>]])
		vim.keymap.set("n", "<leader>hm", [[<cmd>:lua require("harpoon.ui").toggle_quick_menu()<cr>]])
		vim.keymap.set("n", "<leader>hn", [[<cmd>:lua require("harpoon.ui").nav_next()<cr>]])
		vim.keymap.set("n", "<leader>hp", [[<cmd>:lua require("harpoon.ui").nav_prev()<cr>]])
		vim.keymap.set("n", "<leader>ht", [[<cmd>:lua require("harpoon.tmux").gotoTerminal(9)<cr>]])
	end,
}
