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
			require("mason-lspconfig").setup({
				ensure_installed = {
					"lua_ls",
					"basedpyright",
					"rust_analyzer",
					"tsserver",
					"clangd",
					"emmet_language_server",
					"cssls",
					"css_variables",
				},
			})
		end,
	},
	{
		"neovim/nvim-lspconfig",
		config = function()
			local lspconfig = require("lspconfig")
			local capabilities = require("cmp_nvim_lsp").default_capabilities()
			capabilities.textDocument.completion.completionItem.snippetSupport = true
			vim.lsp.protocol.make_client_capabilities().workspace.didChangeWatchedFiles.dynamicRegistration = false
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
