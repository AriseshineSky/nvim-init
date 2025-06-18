return {
	"nvimtools/none-ls.nvim",
	dependencies = {
		"nvim-lua/plenary.nvim",
	},
	event = { "BufReadPre", "BufNewFile" },
	ft = { "ruby" },
	config = function()
		local null_ls = require("null-ls")

		null_ls.setup({
			on_attach = function(client, bufnr)
				vim.notify("null-ls attached to buffer " .. bufnr)
			end,
			sources = {
				null_ls.builtins.diagnostics.rubocop.with({
					command = "bundle",
					args = {
						"exec", "rubocop",
						"--format", "json",
						"--force-exclusion",
						"--stdin", "$FILENAME",
					},
					to_stdin = true,
				}),

				null_ls.builtins.formatting.rubocop.with({
					command = "bundle",
					args = {
						"exec", "rubocop",
						"--auto-correct-all",
						"--stdin", "$FILENAME",
						"--format", "quiet",
					},
					to_stdin = true,
				}),
			},
		})
	end,
}
