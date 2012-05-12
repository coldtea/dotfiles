
" OPTIONS {{{
" set 256 colors if we can
if $TERM =~ "-256color"
  set t_Co=256
endif

" let g:zenburn_high_Contrast=1
" colorscheme zenburn 
set background=dark

" set the window title in screen
if $STY != ""
  set t_ts=k
  set t_fs=\
endif

" use folding if we can
if has ('folding')
  set foldenable
  set foldmethod=marker
  set foldmarker={{{,}}}
  set foldcolumn=0
endif

" main options

syntax on
set ts=4
set autoindent
set autowrite
set backspace=indent,eol,start
set completeopt=longest
" set cursorline
set expandtab
set history=50
set hls
set incsearch
set ignorecase
set laststatus=2
set lbr
set mouse=v
set nobackup
set nocompatible
set nomousehide
set nowrap
set novisualbell
set number
set ruler
set scrolloff=5
set shiftwidth=4
set shortmess+=r
set showmode
set showcmd
set showtabline=1
set smartcase
set smartindent
set smarttab
set splitright
set textwidth=0
set title
set vb t_vb=
set wildmode=list:longest,full

" syntax highlighting
syntax on
filetype plugin indent on


" minibufexplorer
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplModSelTarget = 1 

" ctags options
" Display function name in status bar:
let generate_tags=1
" Displays taglist results in a vertical window:
let Tlist_Use_Horiz_Window=0
" Shorter commands to toggle Taglist display
nnoremap TT :TlistToggle<CR>
map <F4> :TlistToggle<CR>
" Various Taglist diplay config:
let Tlist_Ctags_Cmd='/usr/bin/ctags'
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fold_Auto_Close = 1
let g:ctags_statusline=1

" default comment symbols
let StartComment="#"
let EndComment=""

" }}}

" KEYMAPS {{{


" fix the indentation
inoremap <silent> <C-u> <ESC>u:set paste<CR>.:set nopaste<CR>gi

" make all scripts saved as executables
function ModeChange()
  if getline(1) =~ "^#!"
    if getline(1) =~ "/bin/"
      silent !chmod u+x <afile>
    endif
  endif
endfunction
au BufWritePost * call ModeChange()

" ---------------------------------------------------------------------
" Python
" ---------------------------------------------------------------------
"let python_highlight_all=1
"let python_highlight_space_errors=1
"let python_fold=1
"autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(
"
"command Pylint :call Pylint()
"function! Pylint()
"  setlocal makeprg=(echo\ '[%]';\ pylint\ %)
"  setlocal efm=%+P[%f],%t:\ %#%l:%m
"  silent make
"  cwindow
"endfunction
"
"" omni completion
"set ofu=syntaxcomplete#Complete
"autocmd FileType python set omnifunc=pythoncomplete#Complete

" ---------------------------------------------------------------------
" Haskell mode {{{
" ---------------------------------------------------------------------
au Bufenter *.hs compiler ghc
let g:haddock_browser = "/usr/bin/firefox"
