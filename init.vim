"Base Settings
set nu
set ruler
set rulerformat=%l\:%c  
set autoindent
syntax on
set showmatch " Shows matching brackets
set nocompatible 
set tabstop=4
set laststatus=2
set encoding=utf-8     
set smarttab " Autotabs for certain code
set shiftwidth=4
set relativenumber
" Делаем так, чтобы навигация работала на русском языке
nmap о j
nmap л k
nmap р h
nmap д l
nmap ш i
nmap ф a
nmap в d

" if exists('+termguicolors')
if exists('+termguicolors') 
  let &t_8f = "\<Esc>[38;2;%lu;%lu;%lum"
  let &t_8b = "\<Esc>[48;2;%lu;%lu;%lum"
  set termguicolors
endif

"Plugins
call plug#begin('~/.config/nvim/plugged')
 Plug 'junegunn/fzf', { 'do': { -> fzf#install()  }  }
 Plug 'junegunn/fzf.vim' 
 Plug 'tpope/vim-commentary' 
 Plug 'scrooloose/nerdtree' 
 Plug 'jiangmiao/auto-pairs'
 Plug 'dracula/vim', { 'as': 'dracula'  }
 Plug 'sonph/onehalf', { 'rtp': 'vim' }
 Plug 'ycm-core/YouCompleteMe'
 Plug 'Vimjas/vim-python-pep8-indent' 
 Plug 'tpope/vim-commentary'
call plug#end()
"bindings
colorscheme dracula 
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-n> :NERDTreeToggle<CR>


"Plugins Settings
