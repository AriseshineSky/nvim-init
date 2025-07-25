return {
	setup = function(lspconfig, lsp)
		local capabilities = vim.lsp.protocol.make_client_capabilities()
		capabilities.offsetEncoding = { "utf-16" }

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
