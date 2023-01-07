local dap = require('dap')

dap.adapters.php = {
    type = 'executable',
    command = 'node',
    args = { '/Users/dseyler/vscode-php-debug/out/phpDebug.js' }
}

dap.configurations.php = {
    {
        name = "(App) Listen for Xdebug",
        type = "php",
        request = "launch",
        port = 9000,
        serverSourceRoot = '/app/',
        localSourceRoot = '/Users/dseyler/workspaces/foundation/'
    }
}
require('dap.ui.widgets')

require("dapui").setup()
require("nvim-dap-virtual-text").setup()
