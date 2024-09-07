return {
	"stevearc/conform.nvim",
	event = "BufReadPre",
	opts = {
		notify_on_error = false,
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { { "prettierd", "prettier" } },
			json = { { "prettierd", "prettier" } },
			html = { { "prettierd", "prettier" } },
			go = { "gofumpt", "golangci-lint", "goimports" },
			php = { "pint" },
			mysql = { "sql_formatter" },
			sql = { "sql_formatter" },
			yaml = { "yamlfmt" },
		},
	},
}
