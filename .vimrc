set nocompatible

" Initial Vundle plugin manager
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" Plugin Install
" Vundle plugin manager
Plugin 'VundleVim/Vundle.vim'

" Airline for status line
Plugin 'bling/vim-airline'
Plugin 'vim-airline/vim-airline-themes'

" Javascript and jsx syntax
Plugin 'pangloss/vim-javascript'
Plugin 'mxw/vim-jsx'
Plugin 'othree/yajs.vim'
Plugin 'scrooloose/nerdcommenter'
Plugin 'mhartington/oceanic-next'

Plugin 'tpope/vim-surround'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'mattn/emmet-vim'
Plugin 'valloric/youcompleteme'
Plugin 'tpope/vim-fugitive'
Plugin 'ternjs/tern_for_vim'
Plugin 'jiangmiao/auto-pairs'

Plugin 'junegunn/fzf'

Plugin 'SirVer/ultisnips'
Plugin 'honza/vim-snippets'
Plugin 'ervandew/supertab'
Plugin 'terryma/vim-multiple-cursors'

Plugin 'liuchengxu/space-vim-dark'

call vundle#end()


" GUI hide scroll bar, font, term color, status position
set t_Co=256
set guifont=Ubuntu\ Mono\ derivative\ Powerline:h20
set guioptions-=r
set guioptions-=L
set laststatus=2
set timeoutlen=1000
set ttimeoutlen=0

" Line number Hybrid mode
set relativenumber
set number
set cursorline
"set cursorcolumn
set linespace=3

" Tab size
set tabstop=2
set shiftwidth=2
set expandtab

" Color scheme
"set background=light
"colorscheme PaperColor
colorscheme OceanicNext
"colorscheme space-vim-dark
hi Comment cterm=italic
filetype plugin indent on
syntax enable
set mouse=a
if (has("termguicolors"))
  set termguicolors
endif

" Config listchar map
"set listchars=eol:┐,trail:·,space:·
set listchars=eol:┐,trail:·
set list


" Set cursor mode
let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=1\x7\<Esc>\\"
let &t_SR = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=2\x7\<Esc>\\"
let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"

" Airline
let g:airline_theme='base16_harmonic16'
let g:airline_powerline_fonts=1
let g:airline_extensions = ['branch', 'tabline']
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#left_sep = ''
let g:airline#extensions#tabline#left_alt_sep = ' '
let g:airline#extensions#tabline#right_sep = ''
let g:airline#extensions#tabline#right_alt_sep = ' '

" Fuzzy Finder
set rtp+=/usr/local/opt/fzf

"UltiSnip
" If you want :UltiSnipsEdit to split your window.
let g:UltiSnipsEditSplit="vertical"

" Key map
"let mapleader = ","
nmap <leader>ne :NERDTreeToggle<CR>
nmap <leader>sp :split<CR>
nmap <leader>vp :v split<CR>


" make YCM compatible with UltiSnips (using supertab)
let g:ycm_key_list_select_completion = ['<C-n>', '<Down>']
let g:ycm_key_list_previous_completion = ['<C-p>', '<Up>']
let g:SuperTabDefaultCompletionType = '<C-n>'

" better key bindings for UltiSnipsExpandTrigger
"let g:UltiSnipsExpandTrigger = "<tab>"
let g:UltiSnipsJumpForwardTrigger = "<tab>"
let g:UltiSnipsJumpBackwardTrigger = "<s-tab>"

let g:user_emmet_settings = {
\  'javascript' : {
\      'extends' : 'jsx',
\  },
\}

let g:jsx_ext_required=0

"""""""""""""""""
" Tern settings
"""""""""""""""""
let g:tern_show_argument_hints='on_hold'
" and
let g:tern_map_keys=1

hi Normal guibg=#3A516B
