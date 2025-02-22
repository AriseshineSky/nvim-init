return {
	setup = function(lspconfig, lsp)
		lspconfig.ruby_lsp.setup({
			cmd = { "ruby-lsp" },
			on_attach = function()
			end,
			settings = {
			}
		})

		lspconfig.solargraph.setup({
			cmd = { 'solargraph', 'stdio' },
			settings = {
				solargraph = {
					diagnostics = true,
				},
			},
			init_options = { formatting = true },
			filetypes = { 'ruby' },
		})
	end
}
