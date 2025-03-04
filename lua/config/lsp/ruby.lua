return {
	setup = function(lspconfig, lsp)
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
		lspconfig.rubocop.setup({
			cmd = { 'rubocop', '--lsp' },
			filetypes = { 'ruby' },
		})
	end
}
