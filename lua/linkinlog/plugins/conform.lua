return {
	"stevearc/conform.nvim",
	event = "BufReadPre",
	opts = {
		notify_on_error = false,
		formatters_by_ft = {
			lua = { "stylua" },
			javascript = { "prettierd", "prettier", stop_after_first = true },
			json = { "prettierd", "prettier", stop_after_first = true },
			html = { "prettierd", "prettier", stop_after_first = true },
			svelte = { "prettierd", "prettier" },
			go = { "gofumpt", "golangci-lint", "goimports" },
			php = { "pint" },
			mysql = { "sql_formatter" },
			sql = { "sql_formatter" },
			yaml = { "yamlfmt" },
		},
	},
}
