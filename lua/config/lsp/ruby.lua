return {
	setup = function(lspconfig, lsp)
		lspconfig.solargraph.setup({
			cmd = { "solargraph", "stdio" },
			settings = {
				solargraph = {
					formatting = true,
					diagnostics = true
				}
			},
			filetypes = { 'ruby' },
			root_dir = lspconfig.util.root_pattern("Gemfile", ".git", ".ruby-version", "config/application.rb"),
		})
	end
}
