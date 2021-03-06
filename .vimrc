set nocompatible
set clipboard=unnamed,autoselect
set incsearch
set nobackup
set backspace=indent,eol,start
set showcmd
set showmode
set title
set smartindent
set scrolloff=5
set textwidth=0
set tabstop=4
set shiftwidth=4
set softtabstop=0
set expandtab
set cursorline
set nowrap
set noimdisable
set iminsert=0
set noimcmdline
set noundofile
set noswapfile
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>


if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" neobundle is managed by itself.
NeoBundleFetch 'Shougo/neobundle.vim'

" when win32 env, downloads latest dll automatically for vimproc plugin
if has('win32')
    let g:vimproc#download_windows_dll=1
end

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" write plugin settings to managed by neobundle
"    :help neobundle-examples
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'tpope/vim-fugitive'
NeoBundle 'Shougo/vimproc.vim', {
            \ 'build' : {
            \    'windows' : 'tools\\update-dll-mingw',
            \    'cygwim' : 'make -f make_cygwin.mak',
            \    'mac' : 'make',
            \    'linux' : 'make',
            \    'unix' : 'gmake',
            \    },
            \  }
NeoBundle 'Shougo/vimshell.vim'
NeoBundle 'nathanaelkane/vim-indent-guides'
NeoBundle 'bronson/vim-trailing-whitespace'
NeoBundle 'vim-airline/vim-airline'
NeoBundle 'vim-airline/vim-airline-themes'

call neobundle#end()

filetype plugin indent on

" check already installed plugin
NeoBundleCheck

if !has('vim_starting')
    " settings for reloading .vimrc
    call neobundle#call_hook('on_source')
endif

" map <Leader> to Space key
let mapleader="\<Space>"

" centerize search result
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

inoremap <silent> jj <ESC>

" Shortcut key-mappings for Unite.vim
nnoremap <leader>f :<C-u>Unite file<CR>
nnoremap <leader>b :<C-u>Unite buffer<CR>
nnoremap <Leader>n :<C-u>NERDTreeToggle<CR>

" Airline
"let g:airline_powerline_fonts=1 
set laststatus=2
let g:airline_theme='simple'
let g:airline#extensions#tabline#enabled=1


