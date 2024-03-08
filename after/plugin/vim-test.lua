-- Vim-test
vim.keymap.set("n", "<leader>t", "<cmd>TestNearest -v<CR>")
vim.keymap.set("n", "<leader>T", "<cmd>TestFile -v<CR>")
vim.keymap.set("n", "<leader>l", "<cmd>TestLast -v<CR>")
vim.keymap.set("n", "<leader>a", "<cmd>TestSuite -v<CR>")
vim.g['test#php#phpunit#executable'] =
'docker compose -f docker-compose.yaml -f docker-compose.test.yaml run --rm app-test ./run-tests.sh'
