filetype plugin indent on

" show existing tab with 4 spaces width
set tabstop=2
" when indenting with '>', use 4 spaces width
set shiftwidth=2
" On pressing tab, insert 4 spaces
set expandtab

set relativenumber
set scrolloff=7
set autoindent
set hlsearch
set softtabstop=2

" Permanently highlight the current line by pressing '\l'
" All highlights can be disabled by doing :match
nnoremap <silent> <Leader>l ml:execute 'match Search /\%'.line('.').'l/'<CR>

" Let split be automatically adjusted after terminal pane resize for
" ensuring that they are always equal
autocmd VimResized * wincmd =

execute pathogen#infect()
syntax on
filetype plugin indent on

autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
iabbrev </ </<C-X><C-O>

" Enable ctrlp plugin for fuzzy file search
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Give a shortcut key to NERD Tree
map <F2> :NERDTreeToggle<CR>

"Show hidden files in NerdTree
let NERDTreeShowHidden=1

""autopen NERDTree and focus cursor in new document
"autocmd VimEnter * NERDTree
"autocmd VimEnter * wincmd p

"Map :NERDTreeTabsToggle command to some combo so you don't have to type it
map <Leader>n <plug>NERDTreeTabsToggle<CR>
"
"Map :NERDTreeTabsToggle command to some combo so you don't have to type it
map <Leader>i <plug>TsuImport<CR>

" Configure the typescript plugin to display compilation errors in the QuickFix window
let g:typescript_compiler_binary = 'tsc'
let g:typescript_compiler_options = ''
autocmd QuickFixCmdPost [^l]* nested cwindow
autocmd QuickFixCmdPost    l* nested lwindow

let g:tsuquyomi_completion_detail = 1
let g:ycm_global_ycm_extra_conf = "/home/lucas/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py"

" Make sure that vim-airline is enabled by default
set laststatus=2

" Make sure YCM preview window is closed after completion
let g:ycm_autoclose_preview_window_after_completion=1

" Disable YCM
let g:loaded_youcompleteme = 1

" Let Ack use ag instead
if executable('ag')
  let g:ackprg = 'ag --vimgrep'
endif

" Configure vim-easymotion
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-overwin-f)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
"""nmap s <Plug>(easymotion-overwin-f2)

" Turn on case insensitive feature
let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)
