require('go').setup({
    gofmt = 'gofumpt', --gofmt cmd,
    trouble = true,                                                              -- true: use trouble to open quickfix
    luasnip = true,                                                              -- enable included luasnip snippets. you can also disable while add lua/snips folder to luasnip load
})

-- Run gofmt + goimport on save

local format_sync_grp = vim.api.nvim_create_augroup("GoImport", {})
vim.api.nvim_create_autocmd("BufWritePre", {
    pattern = "*.go",
    callback = function()
        require('go.format').goimport()
    end,
    group = format_sync_grp,
})

vim.cmd("autocmd FileType go nmap <Leader><Leader>l :GoLint<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>t :GoTest<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>c :GoCoverage<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>g :GoGenerate<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>a :GoAlt!<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>va :GoAltV!<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>r :GoGenReturn<CR>")
vim.cmd("autocmd FileType go nmap <Leader><Leader>gc :lua require('go.comment').gen()")
vim.cmd("autocmd FileType go nmap <Leader><Leader>rs :lua require('go.gopls').change_signature()")
