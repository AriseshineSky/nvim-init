return {
	setup = function(lspconfig, lsp)
		lspconfig.standardrb.setup({
			cmd = { "/home/sky/.rbenv/shims/standardrb", "--lsp" },
			init_options = {
				addonSettings = {
					["Ruby LSP Rails"] = {
						enablePendingMigrationsPrompt = false,
					},
				},
				formatter = 'standard',
				linters = { 'standard' },
			},
			filetypes = { 'ruby' },
			root_dir = lspconfig.util.root_pattern("Gemfile", ".git", ".ruby-version", "config/application.rb"),
		})
		lspconfig.ruby_lsp.setup({
			cmd = { "bundle", "exec", "ruby-lsp" },
			init_options = {
				addonSettings = {
					["Ruby LSP Rails"] = {
						enablePendingMigrationsPrompt = false,
					},
				},
				formatter = 'standard',
				linters = { 'standard' },
			},
			filetypes = { 'ruby' },
			root_dir = lspconfig.util.root_pattern("Gemfile", ".git", ".ruby-version", "config/application.rb"),
		})
	end
}
