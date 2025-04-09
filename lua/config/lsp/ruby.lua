return {
	setup = function(lspconfig, lsp)
		lspconfig.ruby_lsp.setup({
			init_options = {
				["Ruby LSP Rails"] = {
					enablePendingMigrationsPrompt = false,
				},
				formatter = 'standard',
				linters = { 'standard' },
			},
			filetypes = { 'ruby' },
			root_dir = lspconfig.util.root_pattern("Gemfile", ".git", ".ruby-version", "config/application.rb"),
		})
	end
}
