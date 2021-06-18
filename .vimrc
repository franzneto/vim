""CONFIGURAÇÕES PADRÃO"

set autoindent
set shiftwidth=4
set nu! 
map q :quit<CR>
set incsearch
set wildmenu
set confirm
set mouse=a
set title

"Fechamento automático de chaves, aspas, parentesis, ponto e virgula"

inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O


"~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~"

"Vundle"
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()


" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

	"seoul256"
Plugin 'junegunn/seoul256.vim'
set t_Co=256
syntax on
colo seoul256
syntax on



	"Vim Airline"
Plugin 'vim-airline/vim-airline'

	"NERDTree"
Plugin 'scrooloose/nerdtree'

" Start NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree

" Start NERDTree and put the cursor back in the other window.
autocmd VimEnter * NERDTree | wincmd p

" Start NERDTree when Vim is started without file arguments."
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree. If a file is specified, move the cursor to its window."
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * NERDTree | if argc() > 0 || exists("s:std_in") | wincmd p | endif

" Start NERDTree, unless a file or session is specified, eg. vim -S session_file.vim.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') && v:this_session == ''| NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) &&! exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd'.argv()[0] | endif

" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" If another buffer tries to replace NERDTree, put it in the other window, and
" bring back NERDTree.
 autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

" Open the existing NERDTree on each new tab."
autocmd BufWinEnter * silent NERDTreeMirror

	"Syntastic"
Plugin 'scrooloose/syntastic'

"Recommended settings"

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

	

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " requiredi
