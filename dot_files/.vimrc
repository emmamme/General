set nocompatible              " be iMproved, required
filetype off                  " required

"""""""""""""""""""""""""""""""""""""""""""""""
" Use another package manager for neovim, installation:
" curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs \  
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
" Specify a directory for plugins (for Neovim: ~/.local/share/nvim/plugged)
" Install for VIM: curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
"    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
call plug#begin('~/.vim/plugged')

" Make sure you use single quotes

" Shorthand notation; fetches https://github.com/junegunn/vim-easy-align
Plug 'junegunn/vim-easy-align'

" Multiple Plug commands can be written in a single line using | separators
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'

" On-demand loading
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
Plug 'tpope/vim-fireplace', { 'for': 'clojure' }

" Using a non-master branch
Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }

" Plugin outside ~/.vim/plugged with post-update hook
Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }

" 
Plug 'vim-scripts/c.vim'

" 
Plug 'jiangmiao/auto-pairs'

" Themes
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'scrooloose/nerdtree'
Plug 'lervag/vimtex'
" Initialize plugin system
call plug#end()


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
" Folding 
set foldenable
set foldmethod=indent "folding by indent
" <space> => fold/unfold current text tips: zR => unfold all; zM => fold all
nnoremap <space> @=((foldclosed(line('.')) < 0) ? 'zc' : 'zo')<CR>


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

" Fast vsp
nnoremap <leader>v :vsp<cr>

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


" \o => open current file by system apps (only in osx)
nmap <leader>o :!open %<cr>
imap <leader>o :!open %<cr>



""""""""""""""""""""""""""""""""""""""""""""'""'
" set textwidth=80
set colorcolumn=+1
set matchpairs+=<:>

""""""""""""""""""""""""""""""""""""""""""""""""
" Auto loading of sessions
"
" Make a session
nnoremap <leader>s :mksession! ./ses.vim<cr>
" Load a session
nnoremap <leader>l :source ./ses.vim<cr>

""""""""""""""""""""""""""""""""""""""""""""""""
" airline/powerline
set laststatus=2 " Always display the statusline in all windows
set noshowmode " Hide the default mode text (e.g. -- INSERT -- below the statusline)

	" enable buffer
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='bubblegum'

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

" Easy align
" " Start interactive EasyAlign in visual mode (e.g. vipga)
xmap ga <Plug>(EasyAlign)

" Start interactive EasyAlign for a motion/text object (e.g. gaip)
nmap ga <Plug>(EasyAlign)
