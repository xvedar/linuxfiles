set nu            " lines number
syntax on         " hl syntax
set vb            " use visual bell instead of beeping
set incsearch     " incremental search (while typing)
set hlsearch      " hightlight search pattern
set linebreak     " xez
set textwidth=500 "Maximum width of text that is being inserted
set wrap          "Wrap lines

set backspace=2
set backspace=indent,eol,start
set scrolloff=1 " number of lines before/after cursor while up/down

" display invisible characters as
set listchars=eol:$,tab:>-,trail:~,extends:>,precedes:<
" display non-printed chars
" set list!

" exit from insert mode
imap jj <Esc>

" to use command mode while cyrilic keyboard on
" edit mode only
"set keymap=russian-jcukenwin
"set iminsert=0
"set imsearch=0
"highlight lCursor guifg=NONE guibg=Cyan

"vimdiff settings
if &diff
        set diffopt+=iwhite           " To avoid whitespace comparison
        "set diffopt=filler,context:0 "To show DIFF lines ONLY
        windo set wrap!               " toggle wrap for all buffers
endif

au InsertEnter,InsertLeave * set cul! " underline when insert mode
" cursorline toggling
"au InsertEnter * hi StatusLine cterm=NONE ctermfg=white ctermbg=red
"au InsertLeave * hi StatusLine cterm=NONE ctermfg=black ctermbg=gray

" first, enable status line always
set laststatus=2
" active split
hi StatusLine cterm=reverse ctermfg=red ctermbg=white
" passive split
hi StatusLineNC cterm=reverse ctermfg=gray ctermbg=black

set showmatch " ?
set ruler     " ? 

" resize window buffer
if bufwinnr(1)

  " vertical split
  " press '<' key
  noremap < <C-W><
  " press '>' key
  noremap > <C-W>>
  " increase/decrease by +10/-10
  noremap <silent><Leader>+ :vertical resize +10<CR>
  noremap <silent><Leader>- :vertical resize -10<CR>

  " horizontal split
  " press '+' key
  noremap + <C-W>+
  " press '-' key
  noremap - <C-W>-
  " the same functionality as two lines above
  "noremap <kPlus> <C-W>+
  "noremap <kMinus> <C-W>-

  " Ctrl+k - move cursor window up
  noremap <C-K> <C-W>k<C-W>_
  " Ctrl+j - move cursor window dn
  noremap <C-J> <C-W>j<C-W>_
  " Ctrl+l - move cursor window right
  noremap <C-L> <C-W>l<C-W>_
  " Ctrl+h - move cursor window left
  noremap <C-H> <C-W>h<C-W>_
"  noremap <kDivide> <c-w><
"  noremap <kMultiply> <c-w>>
"  noremap <kDivide> <c-w><
"  noremap <kMultiply> <c-w>>
endif   
   
