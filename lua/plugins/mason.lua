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
			require("mason-lspconfig").setup({})

			require("mason-lspconfig").setup_handlers({
				-- The first entry (without a key) will be the default handler
				-- and will be called for each installed server that doesn't have
				-- a dedicated handler.
				function(server_name) -- default handler (optional)
					require("lspconfig")[server_name].setup({})
				end,
				-- Next, you can provide a dedicated handler for specific servers.
				-- For example, a handler override for the `rust_analyzer`:
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
			--[[lspconfig.lua_ls.setup({ capabilities })
			lspconfig.basedpyright.setup({ capabilities })
			lspconfig.rust_analyzer.setup({ capabilities })
			lspconfig.tsserver.setup({ capabilities })
			lspconfig.clangd.setup({ capabilities })
			lspconfig.emmet_language_server.setup({ capabilities })
			lspconfig.cssls.setup({ capabilities })
			lspconfig.css_variables.setup({ capabilities })
			lspconfig.html.setup({ capabilities })
			lspconfig.hls.setup({ capabilities })--]]

			vim.keymap.set("n", "K", vim.lsp.buf.hover, {})
			vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
			vim.keymap.set("n", "<leader>ca", vim.lsp.buf.code_action, {})
		end,
	},
}
