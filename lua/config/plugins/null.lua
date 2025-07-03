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
			},
		})
	end,
}
