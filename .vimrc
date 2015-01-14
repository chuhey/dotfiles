set nocompatible

if has('vim_starting')
    set runtimepath+=~/.vim/bundle/neobundle.vim
endif

call neobundle#begin(expand('~/.vim/bundle'))

" neobundle.vim���g��neobundle.vim�ŊǗ�����
NeoBundleFetch 'Shougo/neobundle.vim'

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" �����ɃC���X�g�[���������v���O�C���̐ݒ������
"    :help neobundle-examples
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""
NeoBundle 'junegunn/seoul256.vim'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'scrooloose/nerdtree'

call neobundle#end()

filetype plugin indent on

" �v���O�C�����C���X�g�[������Ă��邩�`�F�b�N
NeoBundleCheck

if !has('vim_starting')
    " _vimrc��ǂݒ��������̂��߂̐ݒ�
    call neobundle#call_hook('on_source')
endif

set clipboard=unnamed,autoselect

