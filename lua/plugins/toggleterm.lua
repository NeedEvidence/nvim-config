return {
	"akinsho/toggleterm.nvim",
	config = function()
		require("toggleterm").setup()
		vim.keymap.set("n", "<leader>tt", "<cmd>ToggleTerm size=20 direction=horizontal name=terminal<cr>")
	end,
}
