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

" �t�@�C���u���E�U�̐ݒ� from Software Design 2015.01���L��
let g:netwr_liststyle = 3
let g:netwr_browse_split = 4
let g:netwr_altv = 1

function! ToggleVExplorer()
	if !exists("t:netrw_bufnr")
		exec '1wincmd w'
		25Vexplore
		let t:netrw_bufnr = bufnr("%")
		return
	endif
	let win = bufwinnr(t:netrw_bufnr)
	if win != -1
		let cur = winnr()
		exe win . 'wincmd w'
		close
		exe cur . 'wincmd w'
	endif
	unlet t:netrw_bufnr
endfunction
map <silent> <leader>e :call ToggleVExplorer()<cr><c-w>p

