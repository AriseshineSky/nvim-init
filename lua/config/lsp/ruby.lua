return {
	setup = function(lspconfig, lsp)
		lspconfig.ruby_lsp.setup({
			init_options = {
				formatter = 'standard',
				linters = { 'standard' }
			},
			filetypes = { 'ruby' },
		})
	end
}
