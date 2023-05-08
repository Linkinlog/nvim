-- Vim-test
vim.keymap.set("n", "<leader>t", "<cmd>TestNearest<CR>")
vim.keymap.set("n", "<leader>T", "<cmd>TestFile<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>TestLast<CR>")
vim.g['test#php#phpunit#executable'] = 'docker compose -f docker-compose.yaml -f docker-compose.test.yaml run --rm app-test ./run-tests.sh'
