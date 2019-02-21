set runtimepath^=~/.vim 
set runtimepath+=~/.vim/after
set runtimepath+=~/.fzf
let &packpath = &runtimepath
set nocompatible
set encoding=utf-8

" Specify a directory for plugins
call plug#begin('~/.local/share/nvim/plugged')

Plug 'pangloss/vim-javascript'
Plug 'mxw/vim-jsx'
Plug 'mattn/emmet-vim'
Plug 'w0rp/ale'
Plug 'skywind3000/asyncrun.vim'
Plug 'editorconfig/editorconfig-vim'
Plug 'janko-m/vim-test'
Plug 'kassio/neoterm'
Plug 'tpope/vim-vinegar'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-rhubarb'
Plug 'dracula/vim', { 'as': 'dracula' }
Plug 'prettier/vim-prettier', {
  \ 'for': ['javascript', 'typescript', 'css', 'less', 'scss', 'json', 'graphql', 'markdown', 'vue', 'yaml', 'html'] }
Plug '~/.fzf'
Plug 'mhartington/oceanic-next'
Plug 'xolox/vim-misc'
Plug 'xolox/vim-notes'

" Initialize plugin system
call plug#end()

let mapleader = ','

" line numbers
set number

" tab/space settings
set expandtab
set autoindent
set backspace=indent,start,eol

filetype plugin indent on
set clipboard=unnamed                   " make it easier to copy-paste with other apps

" search settings
set hlsearch                            " highlight search results
set incsearch                           " search as you type
set ignorecase                          " don't care about case...
set smartcase                           " ...unless there is one capital
set gdefault                            " have :s///g flag on by default


" make things pretty
syntax on
set synmaxcol=200                       " don't highlight really long lines
set scrolloff=10                        " always have some lines around current

set hidden                              " don't have to write bufffer to change to another
set nojoinspaces

set textwidth=120
set wrap

let g:netrw_list_hide = '\(^\|\s\s\)\zs\.\S\+'

" backup/swap file settings
set nobackup
set nowritebackup
set backupdir-=.
set backupdir^=$TEMP

set exrc
set secure

let g:jsx_ext_required = 0

let g:ale_javascript_tsserver_use_global = 1
let g:ale_completion_enabled = 1
"let g:ale_linters_explicit = 1 " only run configured linters
let g:ale_sign_error = '!'
let g:ale_sign_warning = '?'
"let g:ale_lint_on_enter = 0 " don't run when file is accessed
"let g:ale_lint_on_save = 1 " lint when file saved 
"let g:ale_lint_on_text_changed = 0 " lint when file changed
let g:ale_linters = {
\   'javascript': ['tsserver'],
\}
let g:ale_fix_on_save = 1 " fix when file saved
let g:ale_fixers = {
\   'javascript': ['prettier'],
\   'css': ['prettier'],
\   'html': ['prettier'],
\}

"let g:user_emmet_leader_key='<Tab>'
"let g:user_emmet_settings = {
"  \  'javascript.jsx' : {
"    \      'extends' : 'jsx',
"    \  },
"  \}

" FZF config
let $FZF_DEFAULT_COMMAND = 'fd --type f -H -E .git'

inoremap jj <Esc>
nnoremap <Space> i
map <silent> <leader>f :FZF<CR>
map <silent> <leader>b :buffers<CR>
