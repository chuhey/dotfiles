set nocompatible " vi�݊���OFF��
set clipboard=unnamed,autoselect " ���A�v���ł̃N���b�v�{�[�h����\��t���\��
set incsearch " �C���N�������^���T�[�`ON
set nobackup " �o�b�N�A�b�v�Ƃ�Ȃ�
set backspace=indent,eol,start
set showcmd " �R�}���h���X�e�[�^�X�s�ɕ\��
set showmode " ���݂̃��[�h���X�e�[�^�X�s�ɕ\��
set title " �^�C�g�����E�B���h�E�g�ɕ\������
set smartindent " �����C���f���g����
set scrolloff=5 " �J�[�\���̏�܂��͉��ɕ\������ŏ����̍s��
set textwidth=0 " �P�s�̕\�����𒴂��Ă��܂�Ԃ��Ȃ�
set tabstop=4 " �^�u���Ή�����󔒂̐�
set shiftwidth=4 " �^�u��o�b�N�X�y�[�X�Ȃǂ̕ҏW����������ۂɑΉ�����󔒂̐�
set softtabstop=0 " �C���f���g�̊e�i�K�Ŏg����󔒂̐�
set expandtab " �^�u�}�����ɁA����ɋ󔒂��g��
 
" insert ���[�h�𔲂����IME��OFF��
set noimdisable
set iminsert=0 imsearch=0
set noimcmdline
inoremap <silent> <ESC> <ESC>:set iminsert=0<CR>


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
NeoBundle 'nathanaelkane/vim-indent-guides'

call neobundle#end()

filetype plugin indent on

" �v���O�C�����C���X�g�[������Ă��邩�`�F�b�N
NeoBundleCheck

if !has('vim_starting')
    " .vimrc��ǂݒ��������̂��߂̐ݒ�
    call neobundle#call_hook('on_source')
endif

colorscheme desert

