syntax enable 
syntax on            "语法高亮
:set autowrite 
:set autoindent
:set number
:set ignorecase
:set showmatch
:set tabstop=2
:set clipboard+=unnamed   "与windows共享剪贴板"
filetype on           "侦测文件类型"
filetype indent on     "载入文件类型插件
set mouse=v
set showmatch 
set incsearch
set smartindent
set cindent
set tabstop=4
color murphy
set tabstop=4   "表示一个tab显示出来的是多少个空格的长度,默认为8"
set shiftwidth=4
set softtabstop=4
set noexpandtab  "表示用制表符表示一个缩进"
hi Normal  ctermfg=252 ctermbg=none   "设置vim背景透明"
"bundle配置"
set nocompatible 
filetype off 

set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
Plugin 'gmarik/Vundle.vim'
call vundle#end()
filetype plugin indent on 
set foldmethod=indent
au BufWinLeave * silent mkview             "保存文件折叠状态
au BufRead * silent loadview               "恢复文件的折叠状态no
nnoremap <space> za                        "用空格来切换折叠状态
Plugin 'tmhedberg/SimpylFold'              "智能折叠
Plugin 'Valloric/YouCompleteMe'             "自动补全
Plugin 'scrooloose/nerdtree'               "显示项目树
Plugin 'Xuyuanp/nerdtree-git-plugin'       "显示文件的Git增删状态

