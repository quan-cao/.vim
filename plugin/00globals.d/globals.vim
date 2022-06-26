" Tabbing
set expandtab       " Use spaces instead of tabs
set smarttab        " Be smart when using tabs
set shiftwidth=2    " 1 tab == 4 spaces
set tabstop=2       " 1 tab == 4 spaces

" How to split new windows.
set splitbelow splitright

" Linebreak on 500 characters
set lbr
set tw=500

" Indent
set autoindent "Auto indent
set smartindent "Smart indent
set wrap "Wrap lines

" Backspace
set backspace=indent,eol,start
set whichwrap+=<,>,h,l

" No annoying sound on errors
set noerrorbells
set novisualbell
set t_vb=
set tm=500
if has("gui_macvim")
  " Properly disable sound on errors on MacVim
  autocmd GUIEnter * set vb t_vb=
endif

" Command completion
set wildmenu                " Hitting TAB in command mode will
set wildchar=<TAB>          "   show possible completions.
set wildmode=list:longest
set wildignore+=*/.git/*,*/.hg/*,*/.svn/*,*/node_modules/*
set wildignore+=*.DS_STORE,*.db,node_modules/**,*.jpg,*.png,*.gif
set wildignore+=*/coverage

" Swap and Backup file
set nobackup
set nowb
set noswapfile

" Undo file
set undodir=~/.vim/undo-dir
set undofile

" Start file at last open line
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$") | exe "normal! g`\"" | endif
endif

" Searching
set ignorecase	" Ignore case when searching
set smartcase	  " When searching try to be smart about cases
set hlsearch	  " Highlight search results
set incsearch	  " Makes search act like search in modern browsers
set magic       " For regular expressions turn magic on

" Don't redraw while executing macros (good performance config)
set lazyredraw
set ttyfast     " Send more characters at a given time.

" matching brackets
set showmatch
set mat=2

" Status line
set laststatus=2            " Always show status line
set report=0                " Show all changes.
set showcmd                 " show partial command on last line of screen.
set title                   " Show the filename in the window title bar.
set scrolloff=5             " Start scrolling n lines before horizontal border of window.
set sidescrolloff=7         " Start scrolling n chars before end of screen.
set sidescroll=1            " The minimal number of columns to scroll horizontally.

" Use a block-shaped cursor for insert mode
if exists('$TMUX')
  let &t_SI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
  let &t_EI = "\<Esc>Ptmux;\<Esc>\<Esc>]50;CursorShape=0\x7\<Esc>\\"
else
  let &t_SI = "\<Esc>]50;CursorShape=0\x7"
  let &t_EI = "\<Esc>]50;CursorShape=0\x7"
endif

" Enable 256 colors palette in Gnome Terminal
if $COLORTERM == 'gnome-terminal'
  set t_Co=256
endif

if exists('$TMUX')
    set termguicolors
endif

" Set extra options when running in GUI mode
if has("gui_running")
    set guioptions-=T
    set guioptions-=e
    set t_Co=256
    set guitablabel=%M\ %t
endif

