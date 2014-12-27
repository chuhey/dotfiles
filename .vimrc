if has('vim_starting')
    set nocompatible
    set runtimepath+=$HOME/vimfiles/bundle/neobundle.vim
endif

call neobundle#begin(expand('$HOME/vimfiles/bundle'))

" neobundle.vim自身をneobundle.vimで管理する
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" ここにインストールしたいプラグインの設定を書く
"    :help neobundle-examples
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'vim-jp/vimdoc-jp'


call neobundle#end()

filetype plugin indent on

" プラグインがインストールされているかチェック
NeoBundleCheck

if !has('vim_starting')
    " _vimrcを読み直した時のための設定
    call neobundle#call_hook('on_source')
endif

