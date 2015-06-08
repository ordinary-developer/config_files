" VUNDLE 
filetype off 

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

"Bundle 'scrooloose/nerdtree'
Bundle 'ManOfTeflon/nerdtree-json'
Bundle 'jistr/vim-nerdtree-tabs'
"colorscheme
Bundle 'vim-scripts/Solarized'
Bundle 'romainl/Disciple'
Bundle 'MaxSt/FlatColor'
Bundle 'romainl/flattened'
Bundle 'morhetz/gruvbox'
Bundle 'daddye/soda.vim'
Bundle 'jnurmine/Zenburn'
" others
Bundle 'bling/vim-airline'
Plugin 'CSApprox'


"filetype plugin indent on 

"========================
" - Common configuration
" - User interface
" - Colors fonts locales
" - Files and backups
" - Formatting text, tabulation, fonding and assinments
" - Visual Mode
" - Command Mode
" - Cursor moving and buffer control
" - Window control
" - Status bar
" - Edit modes
" - SpellCheck

" - Javascript config
" - CSS config
" - PHP config
" - Other files config

" - Plugins
"========================
"--------------------------------------------
"========================
" Common configuration
"========================
"Turn off compatibility with vi
set nocompatible

"Store the last 150 command
set history=150

"Setting <leader> for fast combinations
let mapleader=","
let g:mapeader=","

"The quantity of actions to be canceled
set undolevels=100

"Do not dumping buffer, we can edit some files without saving
set hidden
set modifiable

"Save session by Ctrl+Q and restoring Ctrl+S
"set sessionoptions=blank,buffers,curdir,folds,help,resize,tabpages,winsize
"map &lt;c-q> :mksession! ~/.vim_files/.session &lt;cr>
"map &lt;c-s> :source ~/.vim_files/.session &lt;cr>

"Opening and loading .vimrc
if has("win32")
    nmap &lt;silent> &lt;leader>ev :e $HOME/_vimrc&lt;cr>
    nmap &lt;silent> &lt;leader>sv :so $HOMVE/_vimrc&lt;cr>
else
    nmap &lt;silent> &lt;leader>ev : e &HOME/.vimrc&lt;cr>
    nmap &lt:silent> &lt;leader>sv : so $HOME/.vimrc&lt;cr>
endif

"F2 - fast save
nmap &lt;F2> :w&lt;cr>
vmap &lt;F2> &lt;esc>:w&lt;cr>i
imap &lt;F2> &lt;esc>:w&lt:cr>i

"Ctrl-c and Ctrl-v - copy paste to global clipboard
vmap &lt;C-C> "+yi
imap &lt;C-V> &lt;esc>"+gPa

"Shift-insert works like in Xterm
map &lt;S-Insert> &lt;MiddleMouse>
"========================
" User interface 
"========================
"Window size
if has("gui_running")
    set columns=110
    set lines=50
endif

" turn on string numeration
set nu

"Column quantity for string numbers
setlocal numberwidth=4

"Highlight the current string
set cursorline

"Display tabs, space in the string ends and others
"if has("win32")
"    :set list listchars=tab:>-,trail:.,nbsp:.,precedes:&lt;,extends:>
"else
"    :set list listchars=tab:>-,trail:.,nbsp:.,precedes:<,extends:>
"endif
"set fillchars=fold:\-

" Hide mouse cursor when type
set mousehide

" Turn on the mouse
set mouse=a
set mousemodel=popup

"Hide the panel and the menu
set guioptions-=T
set guioptions-=m
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R

"turn off the signal
set novisualbell
set t_vb=
set vb

" show the cursor position all time
set ruler

" show unfinished commands in the status bar
set showcmd

"the string count to see with vert (hor) scrolling near the window borders
set scrolloff=7
set sidescrolloff=7
set sidescroll=1

"turn of the tab string showing
"set showtabline=0

"make the command string height equal to 1
set ch=1

"make <cl> clear the highlight as well as redraw
nnoremap &lt;C-L> :nohls&lt;CR>&lt;C-L>
inoremap &lt;C-L> &lt;C-O>:nohls&lt:CR>

"==============================
" Colors, Fonts, locales
"=============================
" Turn on highlighting
syntax on
"Zenburn theme 
if has("gui_running") || has("unix")
	:set t_Co=256
    :set background=light
	":colors zenburn
	":colorscheme zenburn
	":colorscheme solarized
    ":colorscheme gruvbox
    ":colorscheme disciple
    ":colorscheme flatcolor
    :colorscheme flattened_light
    ":colorscheme soda
else
	:colors impact
	:colorscheme impact

endif
" setting the font
if has("gui_running")
  if has("gui_gtk2")
    :set guifont=Droid\ Sans\ Mono\ 10
  elseif has("x11")
    :set guifont=*-lucidatypewriter-medium-r-normal-*-*-180-*-*-m-*-*
  elseif has("gui_win32")
    :set guifont=Consolas:h8:cRUSSIAN
   endif
endif

"status bar view
set showcmd
set ch=1
set statusline=%<:%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P
set laststatus=2

"show tabs from the begging of the string with dots
set listchars=tab:..
set list

"colon for shwoing + for hiding blocks of code
"set foldcolumn=1

"----------------------------------------------------
" Files and backups
"----------------------------------------------------
" store temp and backup files in the .vim folder
set backup
if has("win32")
    set backupdir=$HOME/vimfiles/backup
    set directory=$HOME/vimfiles/tmp
else
    set backupdir=$HOME/.vim/backup
    set directory=$HOME/.vim/tmp
    set viminfo+=n~/.vim/.viminfo
endif

"load ftplugins and indent files
filetype plugin on
"filetype indent on
"----------------------------------------------------
" Formatting text, tabulation, fonding and assinments
"----------------------------------------------------
"size of tabulation by default, Tab replace for Space
set shiftwidth=4
set softtabstop=4
set tabstop=4
set softtabstop=4
set expandtab
set smarttab
" turn on auto indent
set autoindent
"turn on "smart" indent - for example indent after {
set smartindent
set cindent
"set textwidth to be 110 chars
set textwidth=80
"split long string
set wrap
"unsplit long string
"set nowrap
"set margin for wrapping
set wrapmargin=5
"set linbreaks
set linebreak

"----------------------------------------
" Visual mode
"----------------------------------------
"nothing

"----------------------------------------
" Command Mode
"----------------------------------------
"nothing

"-----------------------------------------
" Cursor moving and buffer control
"-----------------------------------------
"nothing

"-----------------------------------------
" Window control
"-----------------------------------------
"nothing

"------------------------------------------
" Status bar
"------------------------------------------
"nothing


"--------------------------------
" Edit mode
"--------------------------------
"nothing

"-------------------------------
" Spellcheck
"------------------------------

"--------------------------------
" JavaScript config
"---------------------------------
" adding support for jQuery syntax highlite
"au BufRead,BufNewFile *.js set ft=javascript.jquery

au FileType javascript setl fen
au FileType javascript setl nocindent

"--------------------------
" CSS config
"--------------------------
"nothing

"---------------------------
" PHP config
"---------------------------
"nothing

"----------------------------
"other file config
"-----------------------------
"nothing

"---------------------------------
" Others
"----------------------------------
"----------------------------------
"moving by long string as in other editors
nmap j gj
nmap < DOWN> gj
nmap k gk
nmap < UP> gk

"----------------------------------
" Plugins
"----------------------------------
"---------------------------------

" NERDTree 
" -------

" Airline
" -------
" get colorscheme
let g:airline_theme="sol"
" enalbe bufferline integration
"let g:airline_enable_bufferline=1
" enable tagbar integration
"let g:airline_enable_tagbar=1

"tabline config
let g:airline_tabline_enabled=1

"for disabling bold fonts
set t_md=




