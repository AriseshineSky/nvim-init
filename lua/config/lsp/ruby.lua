return {
	setup = function(lspconfig, lsp)
		lspconfig.ruby_lsp.setup({
			cmd = { 'ruby-lsp' },
			filetypes = { 'ruby', 'eruby' },
			init_options = {
				formatter = 'auto',
			},
			single_file_support = true,
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
		lspconfig.rubocop.setup({
			cmd = { 'rubocop', '--lsp' },
			filetypes = { 'ruby' },
		})
	end
}
