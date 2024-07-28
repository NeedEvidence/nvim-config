return {
	{
		"williamboman/mason.nvim",
		config = function()
			require("mason").setup()
		end,
	},
	{
		"williamboman/mason-lspconfig.nvim",
		config = function()
			require("mason-lspconfig").setup()
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true
			lspconfig.lua_ls.setup({ capabilities })
			lspconfig.basedpyright.setup({ capabilities })
			lspconfig.rust_analyzer.setup({ capabilities })
			lspconfig.tsserver.setup({ capabilities })
			lspconfig.clangd.setup({ capabilities })
			lspconfig.emmet_language_server.setup({ capabilities })
			lspconfig.cssls.setup({ capabilities })
			lspconfig.css_variables.setup({ capabilities })

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
