require("presence").setup({
    neovim_image_text   = "VSCode", -- Text displayed when hovered over the Neovim image
    -- Rich Presence text options
    editing_text        = "Addin bugs to %s",               -- Format string rendered when an editable file is loaded in the buffer (either string or function(filename: string): string)
    file_explorer_text  = "Perusin %s",              -- Format string rendered when browsing a file explorer (either string or function(file_explorer_name: string): string)
    git_commit_text     = "Committin changes straight to prod",       -- Format string rendered when committing changes in git (either string or function(filename: string): string)
    plugin_manager_text = "Managin plugins",         -- Format string rendered when managing plugins (either string or function(plugin_manager_name: string): string)
    reading_text        = "Readin %s",               -- Format string rendered when a read-only or unmodifiable file is loaded in the buffer (either string or function(filename: string): string)
    workspace_text      = "Workin on %s",            -- Format string rendered when in a git repository (either string or function(project_name: string|nil, filename: string): string)
})
