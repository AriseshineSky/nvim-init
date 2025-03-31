return {
	setup = function(lspconfig, lsp)
		lspconfig.asm_lsp.setup({
			cmd = { 'asm-lsp' },
			filetypes = { 'asm', 'vmasm' },
			single_file_support = true,
			root_dir = function(fname)
				return vim.fs.dirname(vim.fs.find({ '.asm-lsp.toml', '.git' }, { path = fname, upward = true })[1])
			end,
		})
	end
}
