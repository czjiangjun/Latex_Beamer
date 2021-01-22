
" Use Vim settings, rather then Vi settings (much better!).
" This must be first, because it changes other options as a side effect.
set nocompatible

" allow backspacing over everything in insert mode
set backspace=indent,eol,start

if has("vms")
  set nobackup		" do not keep a backup file, use versions instead
else
  set backup		" keep a backup file
endif
set history=50		" keep 50 lines of command line history
set ruler		" show the cursor position all the time
set showcmd		" display incomplete commands
set incsearch		" do incremental searching
set spell
set nu
set encoding=utf-8 fileencodings=utf-8,gbk,cp936,default,latin1

filetype plugin indent on
set completeopt=longest,menu

set csprg=/usr/bin/cscope

let g:SuperTabRetainCompletionType=2
let g:SuperTabDefaultCompletionType="<C-X><C-O>"

let Tlist_Show_One_File=1
let Tlist_Exit_OnlyWindow=1

let g:winManagerWindowLayout='FileExplorer|TagList'
nmap wm :WMToggle<cr>

let g:miniBufExplMapCTabSwitchBufs = 1
let g:miniBufExplMapWindowNavVim = 1
let g:miniBufExplMapWindowNavArrows = 1
nnoremap <silent> <F12> :A<CR>

" For Win32 GUI: remove 't' flag from 'guioptions': no tearoff menu entries
" let &guioptions = substitute(&guioptions, "t", "", "g")

" Don't use Ex mode, use Q for formatting
map Q gq

" CTRL-U in insert mode deletes a lot.  Use CTRL-G u to first break undo,
" so that you can undo CTRL-U after inserting a line break.
inoremap <C-U> <C-G>u<C-U>

" In many terminal emulators the mouse works just fine, thus enable it.
if has('mouse')
  set mouse=a
endif

" Switch syntax highlighting on, when the terminal has colors
" Also switch on highlighting the last used search pattern.
if &t_Co > 2 || has("gui_running")
  syntax on
  set hlsearch
  colorscheme elflord
endif


" REQUIRED. This makes vim invoke Latex-Suite when you open a tex file.
filetype plugin on

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex

" can be called correctly.
set shellslash

" IMPORTANT: grep will sometimes skip displaying the file name if you

" search in a singe file. This will confuse Latex-Suite. Set your grep

" program to always generate a file-name.

" set grepprg=grep/ -nH/ $*

" OPTIONAL: This enables automatic indentation as you type.

filetype indent on

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to

" 'plaintex' instead of 'tex', which results in vim-latex not being loaded.

" The following changes the default filetype back to 'tex':

let g:tex_flavor='latex'
set nofen  
let g:Tex_DefaultTargetFormat='pdf'  
let g:Tex_CompileRule_pdf='pdflatex -interaction=nonstopmode $*'
