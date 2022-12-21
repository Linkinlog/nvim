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
local widgets = require('dap.ui.widgets')
local my_sidebar = widgets.sidebar(widgets.scopes)
local my_frame_sidebar = widgets.sidebar(widgets.frames)
my_sidebar.open()
my_frame_sidebar.open()
widgets.centered_float(widgets.scopes)
require('dap.ui.widgets').hover()

require("dapui").setup()
require("nvim-dap-virtual-text").setup()
