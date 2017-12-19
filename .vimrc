" git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim

" general

set showmatch   

set autoread

set mouse=a




set ts=4 " tab size
set shiftwidth=4 " autoindent size
set number

set background=dark
colorscheme desert

set history=1000


" Syntax Highlighting
if has("syntax")
    syntax on
endif


set hlsearch " highlight search 


set showcmd
set wildmenu
set encoding=utf-8


"""" key Mappings
"nmap j gj
"nmap k gk
"nmap <F2> :bp<CR>


"""""""YouCompleteMe Settings
'
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
	" alternatively, pass a path where Vundle should install plugins
	"call vundle#begin('~/some/path/here')

	" let Vundle manage Vundle, required
	Plugin 'VundleVim/Vundle.vim'

	" The following are examples of different formats supported.
	" Keep Plugin commands between vundle#begin/end.
	" plugin on GitHub repo
	Plugin 'Valloric/YouCompleteMe'

	" All of your Plugins must be added before the following line
	call vundle#end()            " required
	filetype plugin indent on    " required
	" To ignore plugin indent changes, instead use:
	"filetype plugin on
	"
	" Brief help
	" :PluginList       - lists configured plugins
	" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
	" :PluginSearch foo - searches for foo; append `!` to refresh local cache
	" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
	"
	" see :h vundle for more details or wiki for FAQ
	" Put your non-Plugin stuff after this line
	"



" YCM option setting
let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf = 0
let g:ycm_key_list_select_completion = ['', '']
let g:ycm_key_list_previous_completion = ['', '']
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_warning_symbol = '>*'

nnoremap g :YcmCompleter GoTo
" nnoremap gg :YcmCompleter GoToImprecise
" nnoremap d :YcmCompleter GoToDeclaration
" nnoremap t :YcmCompleter GetType
" nnoremap p :YcmCompleter GetParent
"i
let g:ycm_min_num_of_chars_for_completion = 1   " 기본값은 2입니다. 문자가 1개 입력되면 그 때부터 자동완성을 시작합니다. 쓰지 않을려면 99같은 큰 값을 넣어줍니다.
let g:ycm_auto_trigger = 0    " 기본값은 1입니다. '.'이나 '->'을 받으면 자동으로 목록들을 출력해주죠.
let g:ycm_collect_identifiers_from_tags_files = 1    " tags 파일을 사용합니다. 성능상 이익이 있는걸로 알고 있습니다.
let g:ycm_filetype_whitelist = { '*': 1 }    " 화이트 리스트를 설정합니다.
let g:ycm_filetype_blacklist = {
      \ 'tagbar' : 1,
      \ 'qf' : 1,
      \ 'notes' : 1,
      \}    " 블랙 리스트를 설정합니다.



