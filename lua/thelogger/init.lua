require("thelogger.set")
require("thelogger.remap")
require("thelogger.packer")

local autocmd = vim.api.nvim_create_autocmd
autocmd({ "BufRead,BufNewFile" }, {
    pattern = "*.blade.php",
    command = "set filetype=blade",
})
