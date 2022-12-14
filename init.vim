:set clipboard=unnamed
:set number
:set relativenumber
:set autoindent
:set tabstop=4
:set shiftwidth=4
:set softtabstop=4
:set mouse=a
:set cpo-=<


let g:ctrlp_show_hidden = 1
let g:ctrlp_working_path_mode = 'ra'

command Wt write | GoTest
command Wl write | GoLint

autocmd FileType javascript setlocal equalprg=js-beautify
autocmd FileType go setlocal equalprg=gofmt



" Copy to system clipboard
vnoremap <leader>y  "+y
nnoremap <leader>Y  "+yg_
nnoremap <leader>y  "+y

" Cut half page and zz
nnoremap <C-d> <C-d>zz
nnoremap <C-u> <C-u>zz

" Paste from system clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

"----------------------------------------------------------------------
" Key Mappings
"----------------------------------------------------------------------
" Remap a key sequence in insert mode to kick me out to normal
" mode. This makes it so this key sequence can never be typed
" again in insert mode, so it has to be unique.
inoremap jj <esc>
inoremap jJ <esc>
inoremap Jj <esc>
inoremap JJ <esc>
inoremap jk <esc>
inoremap jK <esc>
inoremap Jk <esc>
inoremap JK <esc>

" Move to previous/next
nnoremap <silent>    <A-,> <Cmd>BufferPrevious<CR>
nnoremap <silent>    <A-.> <Cmd>BufferNext<CR>
" Re-order to previous/next
nnoremap <silent>    <C-<> <Cmd>BufferMovePrevious<CR>
nnoremap <silent>    <C->> <Cmd>BufferMoveNext<CR>
" Goto buffer in position...
nnoremap <silent>    <C-1> <Cmd>BufferGoto 1<CR>
nnoremap <silent>    <C-2> <Cmd>BufferGoto 2<CR>
nnoremap <silent>    <C-3> <Cmd>BufferGoto 3<CR>
nnoremap <silent>    <C-4> <Cmd>BufferGoto 4<CR>
nnoremap <silent>    <C-5> <Cmd>BufferGoto 5<CR>
nnoremap <silent>    <C-6> <Cmd>BufferGoto 6<CR>
nnoremap <silent>    <C-7> <Cmd>BufferGoto 7<CR>
nnoremap <silent>    <C-8> <Cmd>BufferGoto 8<CR>
nnoremap <silent>    <C-9> <Cmd>BufferGoto 9<CR>
nnoremap <silent>    <C-0> <Cmd>BufferLast<CR>
" Close buffer
nnoremap <silent>    <C-A-w> <Cmd>BufferClose<CR>
" Wipeout buffer
"                          :BufferWipeout
" Close commands
"                          :BufferCloseAllButCurrent
"                          :BufferCloseAllButVisible
"                          :BufferCloseAllButPinned
"                          :BufferCloseAllButCurrentOrPinned
"                          :BufferCloseBuffersLeft
"                          :BufferCloseBuffersRight
" Sort automatically by...
nnoremap <silent> <Space>bb <Cmd>BufferOrderByBufferNumber<CR>
nnoremap <silent> <Space>bd <Cmd>BufferOrderByDirectory<CR>
nnoremap <silent> <Space>bl <Cmd>BufferOrderByLanguage<CR>
nnoremap <silent> <Space>bw <Cmd>BufferOrderByWindowNumber<CR>

nnoremap <silent> <C-e> <Cmd>NvimTreeOpen<CR>
nnoremap <silent> <C-A-e> <Cmd>NvimTreeClose<CR>
nnoremap <silent> <C-p> <Cmd>Files<Cr>
nnoremap <silent> <C-f> <Cmd>Rg<Cr>

" Go Setup
source ~/.config/nvim/coc.vim

" Launch gopls when Go files are in use
let g:LanguageClient_serverCommands = {
       \ 'go': ['gopls']
       \ }

let g:ale_linters = {
  \ 'go': ['gopls'],
  \ 'javascript': ['tsserver'],
  \}
let g:ale_fixers = {
		\ 'javascript' : ['tsserver'],
	  \ }
let g:ale_disable_lsp = 1

augroup LspGo
  au!
  autocmd User lsp_setup call lsp#register_server({
      \ 'name': 'go-lang',
      \ 'cmd': {server_info->['gopls']},
      \ 'whitelist': ['go'],
      \ })
  " autocmd FileType go setlocal omnifunc=lsp#complete
  "autocmd FileType go nmap <buffer> gd <plug>(lsp-definition)
  "autocmd FileType go nmap <buffer> ,n <plug>(lsp-next-error)
  "autocmd FileType go nmap <buffer> ,p <plug>(lsp-previous-error)
augroup END

autocmd BufWritePre *.go :call CocAction('runCommand', 'editor.action.organizeImport')

let g:vdebug_options = {}
let g:vdebug_options["port"] = 9000
let g:vdebug_options.path_maps = {"/app": getcwd() }

call plug#begin()

" Discord presence
Plug 'andweeb/presence.nvim'
" Debugging
Plug 'https://github.com/vim-vdebug/vdebug'
" Theming
Plug 'https://github.com/asvetliakov/vim-easymotion'
Plug 'https://github.com/vim-airline/vim-airline'
Plug 'mg979/vim-visual-multi', {'branch': 'master'}
Plug 'vim-airline/vim-airline-themes'
Plug 'tomasiser/vim-code-dark'
Plug 'romgrk/barbar.nvim'
" Center text
Plug 'junegunn/goyo.vim'
" Fuzzy find files
Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
Plug 'junegunn/fzf.vim'
" This objectively makes vim better
Plug 'terryma/vim-multiple-cursors'
" Working with tags
Plug 'alvan/vim-closetag'
Plug 'AndrewRadev/tagalong.vim'
" Commenting
Plug 'tpope/vim-commentary'
" Syntax highlighting
Plug 'yuezk/vim-js'
Plug 'maxmellon/vim-jsx-pretty'
Plug 'HerringtonDarkholme/yats.vim'
Plug 'vim-pandoc/vim-pandoc-syntax'
" Dev Dock integration
Plug 'romainl/vim-devdocs'
" Nvim-tree
Plug 'nvim-tree/nvim-web-devicons'
Plug 'nvim-tree/nvim-tree.lua'
" Tree Sitter
Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
" Go
Plug 'fatih/vim-go', { 'do': ':GoUpdateBinaries' }
Plug 'dense-analysis/ale'
Plug 'prabirshrestha/vim-lsp'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Session management
Plug 'olimorris/persisted.nvim'

call plug#end()
PlugInstall | quit

lua require('nvimtree')
lua << EOF
  require("persisted").setup {
		--save_dir = vim.fn.expand(vim.fn.stdpath("data") .. "/sessions/"), -- directory where session files are saved
		command = "VimLeavePre", -- the autocommand for which the session is saved
		silent = false, -- silent nvim message when sourcing session file
		use_git_branch = true, -- create session files based on the branch of the git enabled repository
		autosave = true, -- automatically save session files when exiting Neovim
		--should_autosave = nil, -- function to determine if a session should be autosaved
		autoload = false, -- automatically load the session for the cwd on Neovim startup
		--on_autoload_no_session = nil, -- function to run when `autoload = true` but there is no session to load
		follow_cwd = true, -- change session file name to match current working directory if it changes
		--allowed_dirs = nil, -- table of dirs that the plugin will auto-save and auto-load from
		--ignored_dirs = nil, -- table of dirs that are ignored when auto-saving and auto-loading
		--before_save = nil, -- function to run before the session is saved to disk
		--after_save = nil, -- function to run after the session is saved to disk
		--after_source = nil, -- function to run after the session is sourced
		--telescope = { -- options for the telescope extension
		--before_source = nil, -- function to run before the session is sourced via telescope
		--after_source = nil, -- function to run after the session is sourced via telescope
		reset_prompt_after_deletion = true, -- whether to reset prompt after session deleted
  }
EOF
