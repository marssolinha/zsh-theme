runtime! debian.vim

set updatetime=750
set encoding=utf8
set nocompatible              " be iMproved, required
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
" Plugin 'file:///home/marssola/.vim/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
Plugin 'Valloric/YouCompleteMe'
Plugin 'dracula/vim'
Plugin 'aradunovic/perun.vim'
Plugin 'HenryNewcomer/vim-theme-papaya'
Plugin 'wimstefan/vim-artesanal'
Plugin 'bf4/vim-dark_eyes'
Plugin 'Alvarocz/vim-northpole'
Plugin 'miyakogi/seiya.vim'
Plugin 'nightsense/office'

" Utility
Plugin 'scrooloose/nerdtree'
Plugin 'majutsushi/tagbar'
Plugin 'ervandew/supertab'
Plugin 'BufOnly.vim'
Plugin 'wesQ3/vim-windowswap'
Plugin 'SirVer/ultisnips'
Plugin 'junegunn/fzf.vim'
Plugin 'junegunn/fzf'
Plugin 'godlygeek/tabular'
Plugin 'ctrlpvim/ctrlp.vim'
Plugin 'benmills/vimux'
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'gilsondev/searchtasks.vim'
Plugin 'Shougo/neocomplete.vim'
Plugin 'tpope/vim-dispatch'

" Generic Programming Support 
Plugin 'honza/vim-snippets'
Plugin 'Townk/vim-autoclose'
Plugin 'tomtom/tcomment_vim'
Plugin 'tobyS/vmustache'
Plugin 'janko-m/vim-test'
Plugin 'maksimr/vim-jsbeautify'
Plugin 'vim-syntastic/syntastic'
Plugin 'neomake/neomake'

" Markdown / Writting
Plugin 'reedes/vim-pencil'
Plugin 'tpope/vim-markdown'
Plugin 'jtratner/vim-flavored-markdown'
Plugin 'LanguageTool'

" Git Support
Plugin 'kablamo/vim-git-log'
Plugin 'gregsexton/gitv'

" PHP Support
" Plugin 'phpvim/phpcd.vim' - bugado
" Plugin 'lvht/phpcd.vim'
" Plugin 'shawncplus/phpcomplete.vim'
Plugin 'tobyS/pdv'
" Plugin 'php.vim'
Plugin 'Shougo/vimproc.vim'
Plugin 'm2mdas/phpcomplete-extended'
Plugin 'shawncplus/phpcomplete.vim'
Plugin 'evidens/vim-twig'

" OSX stupid backspace fix
set backspace=indent,eol,start

" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

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
syntax on
set background=dark
colorscheme artesanal
let g:seiya_auto_enable=1
set ffs=unix,mac,dos
set ai
set ic
set showmatch

set tabstop=2
set expandtab
set softtabstop=2
set shiftwidth=2

set autoindent
set nu
set ruler
set ignorecase
set smartcase
set hlsearch
set incsearch

let g:elite_mode=1

" Airline
set noshowmode
set laststatus=2
" Highlight na linha do cursor
set cul

set wildmenu
" set wildmode=longest:list,full
set wildmode=list:longest,full
" Ultisnips
let g:UltiSnipsExpandTrigger="<tab>"
let g:UltiSnipsJumpForwardTrigger="<c-l>"
let g:UltiSnipsJumpBackwardTrigger="<c-b>"


" YouCompleteMe
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:ycm_key_list_select_completion=[]
let g:ycm_key_list_previous_completion=[]
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1

" Use python 2
let g:syntastic_python_python_exec = '/usr/bin/python'
let g:syntastic_python_checkers = ['/usr/bin/flake8']


" PHP checkers
let g:syntastic_php_checkers = ['php', 'phpcs', 'phpmd']
" Rainbow parentheses
let g:rainbow_active = 1
" Other remaps

let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Tagbar
map <C-n> :NERDTreeToggle<CR>
map <F7> mzgg=G`z
map <F2> :set nonumber<CR>
map <F3> :set number<CR>
nnoremap <C-Left>  :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>
nnoremap <C-t>     :tabnew<CR>
nnoremap <C-w>     :tabclose<CR>
nnoremap <F5>      :w<CR>
nnoremap <F4>      :wq<CR>
