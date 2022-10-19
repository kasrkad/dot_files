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
set statusline=%<%f\ %h%m%r%{kite#statusline()}%=%-14.(%l,%c%V%)\ %P
set laststatus=2
set completeopt+=menuone
set completeopt-=preview
set completeopt+=noinsert
set splitbelow splitright 
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
 Plug 'nvie/vim-flake8'
 Plug 'vim-syntastic/syntastic'
 Plug 'vim-airline/vim-airline'
 Plug 'mg979/vim-visual-multi', {'branch': 'master'}
 Plug 'tpope/vim-fugitive'
 Plug 'vim-airline/vim-airline-themes'
 Plug 'airblade/vim-gitgutter'
 Plug 'junegunn/fzf.vim' 
 Plug 'tpope/vim-commentary' 
 Plug 'scrooloose/nerdtree' 
 Plug 'jiangmiao/auto-pairs'
 Plug 'dracula/vim', { 'as': 'dracula'  }
 Plug 'sonph/onehalf', { 'rtp': 'vim' }
 Plug 'Vimjas/vim-python-pep8-indent' 
 Plug 'tpope/vim-commentary'
 Plug 'neoclide/coc.nvim', {'branch': 'master', 'do': 'yarn install --frozen-lockfile'}
call plug#end()
"bindings
colorscheme dracula 
nnoremap <silent> <C-f> :Files<CR>
nnoremap <silent> <C-a> :NERDTreeToggle<CR>


"Plugins Settings
let python_highlight_all=1
let g:airline_powerline_fonts = 1
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_nr_show = 1
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_loc_list_height=3

" YouCompleteMe
let g:ycm_global_ycm_extra_conf='~/.vim/bundle/YouCompleteMe/.ycm_extra_conf.py'
let g:ycm_confirm_extra_conf=0
let g:ycm_python_binary_path='/usr/bin/python3'

augroup exe_code
	autocmd!
	autocmd FileType python nnoremap <buffer> <localleader>r 
				\ :sp<CR> :term python3 %<CR> :startinsert<CR>
augroup END
" --------------------------------------------------------
" SETTINGS START

set completeopt=longest,menuone

" SETTINGS END
" --------------------------------------------------------

" --------------------------------------------------------
" COC-VIM TAB SETTINGS START

" Use tab for trigger completion with characters ahead and navigate.
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion.
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use <cr> to confirm completion, `<C-g>u` means break undo chain at current
" position. Coc only does snippet and additional edit on confirm.
" <cr> could be remapped by other vim plugin, try `:verbose imap <CR>`.
if exists('*complete_info')
  inoremap <expr> <cr> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"
else
  inoremap <expr> <cr> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"
endif

" COC-VIM TAB SETTINGS END
" --------------------------------------------------------
