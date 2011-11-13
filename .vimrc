" Sources
" http://nvie.com/posts/how-i-boosted-my-vim


" Not sure why this is here
set nocompatible
" Invoke Pathogen
call pathogen#infect()
" Not sure about this one
syntax on
" Detect file type and set indents and plugins accordingly 
filetype plugin indent on
" Change the mapleader from \ to ,
let mapleader=","
" Quickly edit/reload the vimrc file
nmap <silent> <leader>ev :e $MYVIMRC<CR>
nmap <silent> <leader>sv :so $MYVIMRC<CR>
" Hide buffers instead of closing them.
set hidden
" Do not wrap lines
set nowrap
" A tab is four spaces
set tabstop=4
" Allow backspacing over everything in insert mode
set backspace=indent,eol,start
" Always set autoindenting on
set autoindent
" Copy previous indentation on autoindenting
set copyindent
" Always show line numbers
set number
" Number of spaces to use for autoindenting
set shiftwidth=4
" Use multiple of shiftwidth when indenting with '<' and '>'
set shiftround
" Show matching paranthesis
set showmatch
" Ignore case while searching
set ignorecase
" Ignore case if search pattern is all lowercase, case-sensitive otherwise
set smartcase
" Insert tabs on the start of a line according to shiftwidth, not tabstop
set smarttab
" Highlight search terms
set hlsearch
" Show search matches as they are typed
set incsearch
" Remember more commands and search history
set history=1000
" Use many levels of undo
set undolevels=1000
" Ignore some file extensions while using tab for filename completion
set wildignore=*.swp,*.bak,*.pyc,*.class
" Change the terminal's title
set title
" Don't beep
set visualbell
set noerrorbells
" Prevent vim from writing backup files
set nobackup
set noswapfile
" Python specific - expand tabs to spaces? The IF is to remain compatible with older version of vim
if has('autocmd')
  autocmd filetype python set expandtab
endif
" Loading colorschems if 256 color mode. Place colorschems in .vim/colors
if &t_Co >= 256 || has("gui_running")
  colorscheme mustang
endif
" Turn on syntax highlighting if terminal has color
if &t_Co > 2 || has("gui_running")
  syntax on
endif
" Highlight whitespaces. Set List required to enable listchars
set list
set listchars=tab:>.,trail:.,extends:#,nbsp:.
" Disable showing tabs in html and xml
autocmd filetype html,xml set listchars-=tab:>.
" Set key for paste mode, this will prevent cascading indents while pasting large blocks of text into vim. It disables all intelligence while pasting.
set pastetoggle=<F2>
" enable mouse, best used for scrolling. Disable this if you want to use your mouse outside of vim while still in the terminal
" set mouse=a -- Disabling this as its interfering with copy paste on putty
" If you forget to sudo before opening a file, this command does it after you've opened it.
cmap w!! w !sudo tee % >/dev/null
