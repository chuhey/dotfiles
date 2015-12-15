" Gvim向け設定
set number " 行番号表示
set guifont=Myrica\ M:h12,MS\ Gothic:h12 " フォント設定

set nocompatible " vi互換をOFFに
set clipboard=unnamed,autoselect " 他アプリでのクリップボード情報を貼り付け可能に
set incsearch " インクリメンタルサーチON
set nobackup " バックアップとらない
set backspace=indent,eol,start
set showcmd " コマンドをステータス行に表示
set showmode " 現在のモードをステータス行に表示
set title " タイトルをウィンドウ枠に表示する
set smartindent " 賢いインデント処理
set scrolloff=5 " カーソルの上または下に表示する最小限の行数
set textwidth=0 " １行の表示幅を超えても折り返さない
set tabstop=4 " タブが対応する空白の数
set shiftwidth=4 " タブやバックスペースなどの編集操作をした際に対応する空白の数
set softtabstop=0 " インデントの各段階で使われる空白の数
set expandtab " タブ挿入時に、代わりに空白を使う
set cursorline " 現在行をハイライト
set nowrap " 折り返しをやめる
set noimdisable " insert モードを抜けるとIMEをOFFに
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>


if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" neobundle.vim自身をneobundle.vimで管理する
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ここにインストールしたいプラグインの設定を書く
"    :help neobundle-examples
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

filetype plugin indent on

" プラグインがインストールされているかチェック
NeoBundleCheck

if !has('vim_starting')
    " .vimrcを読み直した時のための設定
    call neobundle#call_hook('on_source')
endif

" 検索結果を画面中央にする
nmap n nzz
nmap N Nzz
nmap * *zz
nmap # #zz
nmap g* g*zz
nmap g# g#zz

inoremap <silent> jj <ESC>

colorscheme desert

