set nocompatible

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
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin indent on

" プラグインがインストールされているかチェック
NeoBundleCheck

if !has('vim_starting')
    " _vimrcを読み直した時のための設定
    call neobundle#call_hook('on_source')
endif

set clipboard=unnamed,autoselect

