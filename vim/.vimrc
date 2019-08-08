" ------------ Theme --------------
colorscheme molokai
let g:rehash256 = 1
let g:molokai_original = 1

" ------------ Basic --------------
syntax on
set nu!             "显示行号
set tabstop=2       "tab宽度2个space
set shiftwidth=2    "跟上面配套设置
set autoindent      "自动缩进
" set splitright
" set splitbelow
set ic              "ignore casesensitive
set expandtab       "tab输入将以space保存
" set cursorcolumn  "竖光标
set cursorline      "横光标

" 分屏窗口移动
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Y 复制到系统剪贴板
map Y "*y

" jj -> esc
inoremap jj <ESC>

" 左右方向键切换buffer
noremap <left> :bp<CR>
noremap <right> :bn<CR>

" ------------ YouCompleteMe ----------
let g:ycm_key_list_stop_completion = [ '<C-y>', '<Enter>' ]
let g:ycm_autoclose_preview_window_after_insertion = 1

" ------------ PowerLine --------------
let g:Powerline_symbols = 'fancy'
set laststatus=2
set noshowmode
set t_Co=256

" ------------ NerdTree --------------
" auto open nerdtree if no file specified
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
" exit when there's the only file and nerdtree
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif
map <F6> :NERDTreeToggle<CR>
" replace the delimiter to \t to avoid missing first character in NerdTree
let NERDTreeNodeDelimiter = "\t"
" auto del buffer when delete
let NERDTreeAutoDeleteBuffer = 1

" ------------ Airlines --------------
let g:airline_powerline_fonts = 1
let g:airline_theme='luna'
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#show_splits = 1

" ------------ Vundle --------------
set nocompatible              " be iMproved, required
set showcmd
filetype off                  " required

" ------------ CtrlP --------------
"  ignore dirs
let g:ctrlp_custom_ignore = 'node_modules\|DS_Store\|git'

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" ------------ Signify --------------
let signify_sign_weight = 'NONE'

" Plugins
Plugin 'VundleVim/Vundle.vim' " <- Required
Plugin 'scrooloose/nerdtree'
Plugin 'Xuyuanp/nerdtree-git-plugin'
" Plugin 'powerline/powerline', {'rtp': 'powerline/bindings/vim/'}
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'pangloss/vim-javascript'
Plugin 'isRuslan/vim-es6'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'posva/vim-vue'
Plugin 'Valloric/YouCompleteMe'
Plugin 'leafgarland/typescript-vim'
Plugin 'fatih/vim-go'
Plugin 'mattn/emmet-vim'
Plugin 'terryma/vim-multiple-cursors'
Plugin 'tpope/vim-surround'
Plugin 'mhinz/vim-signify'

" All of your Plugins must be added before the following line
call vundle#end()
filetype plugin indent on
