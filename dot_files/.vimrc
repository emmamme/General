""""""""""""""""""""""""""""""""""""""""""""""""
" Vundle Plugin
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
Plugin 'tpope/vim-fugitive'

" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'

" Git plugin not hosted on GitHub
Plugin 'git://git.wincent.com/command-t.git'

" git repos on your local machine (i.e. when working on your own plugin)
" Plugin 'file:///home/gmarik/path/to/plugin'

" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
Plugin 'ascenator/L9', {'name': 'newL9'}

" YouCompleteMe
Plugin 'Valloric/YouCompleteMe'
" YouCompleteMea Generator
Plugin 'rdnetto/YCM-Generator'

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

let mapleader="," " leader is now comma

""""""""""""""""""""""""""""""""""""""""""""""""
" Editor settings
set number
set cursorline
set showmatch
set ruler
set showcmd
set wildmenu
set magic
set autoread
set helplang=cn             "帮助系统设置为中文
syntax enable
colorscheme elflord

""""""""""""""""""""""""""""""""""""""""""""""""
" tab control
set tabstop=4
set softtabstop=4
set shiftwidth=4
set ai "auto indent
filetype indent on

""""""""""""""""""""""""""""""""""""""""""""""""
" searching
" "instant search
set incsearch 
" highlight searching
set hlsearch
set ignorecase
set smartcase

"turn off search highlight (, space)
nnoremap <leader><space> :nohlsearch<CR>

""""""""""""""""""""""""""""""""""""""""""""""""
" moving around the line
nnoremap B ^
nnoremap e $ 

" Treat long line as break lines
map j gj
map k gk

""""""""""""""""""""""""""""""""""""""""""""""""
" Personal key mappings
"
" Fast saving
nnoremap <leader>w :wa!<cr>

" Fast quiting
nnoremap <leader>q :q<cr>

" Fast refresh
" nnoremap <leader>e :edit<cr>

" Fast refresh
nnoremap <leader>e :Explore<cr>

" Delete a line
nnoremap <leader>d dd

" Yank a line
nnoremap <leader>y yy

" see what's done in previous editing mode
nnoremap gV `[v`]

" Faster exit of edit mode
inoremap jk <esc>
inoremap jj <esc>

" new tab edit with current buffer location
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/

" Setting correct bahavior for backspace
set backspace=indent,eol,start

" Faster window switch
map <silent> <A-Up> :wincmd k<CR>
map <silent> <A-Down> :wincmd j<CR>
map <silent> <A-Left> :wincmd h<CR>
map <silent> <A-Right> :wincmd l<CR>

map  <silent> q<Up> :wincmd k<CR>
map  <silent> q<Down> :wincmd j<CR>
map  <silent> q<Left> :wincmd h<CR>
map  <silent> q<Right> :wincmd l<CR>

nnoremap <C-l> gt
nnoremap <C-h> gT

" Fast resizing 
nnoremap <leader>= :res +10<cr>
nnoremap <leader>- :res -10<cr>
nnoremap <leader>0 :vertical resize +10<cr>
nnoremap <leader>9 :vertical resize -10<cr>

""""""""""""""""""""""""""""""""""""""""""""'""'
set textwidth=80
set colorcolumn=+1
set matchpairs+=<:>

""""""""""""""""""""""""""""""""""""""""""""""""
" Auto loading of sessions
"
" Make a session
nnoremap <leader>s :mksession! ./ses.vim<cr>
" Load a session
nnoremap <leader>l :source ./ses.vim<cr>

"""""""""""""""""""""""""""""""""""""""""""""""""
set rtp+=/usr/local/lib/python2.7/site-packages/powerline_status-2.5.dev9999+git.cdd0cdbfee94238d38c1bef5f0548a4622518a05-py2.7.egg/powerline/bindings/vim
set laststatus=2
set t_Co=256

""""""""""""""""""""""""""""""""""""""""""""""""
" YCM Settings 

" let g:ycm_global_ycm_extra_conf = '~/.vim/.ycm_extra_conf.py'

" Warning and error
let g:ycm_error_symbol='>>'  
let g:ycm_warning_symbol='>*' 

" Goto declaration/definition"
nnoremap <leader>gc :YcmCompleter GoToDeclaration<CR>  
nnoremap <leader>gf :YcmCompleter GoToDefinition<CR>  
nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>  
nnoremap <leader>gd :YcmCompleter GetDoc<CR>  
nnoremap <leader>ff :YcmCompleter FixIt<CR>  


"设置全局配置文件的路径  
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'  
"开启基于tag的补全，可以在这之后添加需要的标签路径  
let g:ycm_collect_identifiers_from_tags_files = 1  
"开启语义补全  
let g:ycm_seed_identifiers_with_syntax = 1  
"在接受补全后不分裂出一个窗口显示接受的项  
set completeopt-=preview  
"不显示开启vim时检查ycm_extra_conf文件的信息  
let g:ycm_confirm_extra_conf=0  
"每次重新生成匹配项，禁止缓存匹配项  
let g:ycm_cache_omnifunc=0  
"在注释中也可以补全  
let g:ycm_complete_in_comments=1  
"输入第一个字符就开始补全  
let g:ycm_min_num_of_chars_for_completion=1  
"不查询ultisnips提供的代码模板补全，如果需要，设置成1即可  
let g:ycm_use_ultisnips_completer=0 

