set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'


" FILE BROWSING
Plugin 'jlanzarotta/bufexplorer'            " https://github.com/jlanzarotta/bufexplorer
Plugin 'jeetsukumaran/vim-buffergator'
Plugin 'kien/ctrlp.vim'
Plugin 'scrooloose/nerdtree'
Plugin 'xolox/vim-session'                  " https://github.com/xolox/vim-session
" Plugin 'majutsushi/tagbar'                  " https://github.com/majutsushi/tagbar
Plugin 'tpope/vim-vinegar'                  " https://github.com/tpope/vim-vinegar

" SYNTAX
Plugin 'Townk/vim-autoclose'                " https://github.com/Townk/vim-autoclose
Plugin 'tpope/vim-commentary'               " https://github.com/tpope/vim-commentary
Plugin 'junegunn/vim-easy-align'            " https://github.com/junegunn/vim-easy-align
Plugin 'tpope/vim-markdown'
Plugin 'tpope/vim-surround'                 " https://github.com/tpope/vim-surround
Plugin 'scrooloose/syntastic'
" Plugin '2072/vim-syntax-for-PHP.git'        " https://github.com/2072/vim-syntax-for-PHP
" Plugin 'xolox/vim-easytags'
" Plugin 'othree/html5-syntax.vim'
" Plugin 'leshill/vim-json'
" Plugin 'pangloss/vim-javascript'
" Plugin '2072/PHP-Indenting-for-VIm'       " http://www.2072productions.com/to/phpindent.txt
" Plugin 'captbaritone/better-indent-support-for-php-with-html'
                                            " https://github.com/captbaritone/better-indent-support-for-php-with-html"
" Plugin 'stephpy/vim-php-cs-fixer'         " https://github.com/stephpy/vim-php-cs-fixer
                                            " Also need: https://github.com/fabpot/PHP-CS-Fixer"
                                            " https://gist.github.com/KazuakiM/11045462"

" GIT
" Plugin 'tpope/vim-fugitive'
" Plugin 'airblade/vim-gitgutter'             " https://github.com/airblade/vim-gitgutter

" CODE COMPLETION
" Plugin 'Shougo/neocomplete.vim'             " https://github.com/Shougo/neocomplete.vim
" Plugin 'Shougo/neocomplcache.vim'           " https://github.com/Shougo/neocomplcache.vim
" Plugin 'Shougo/vimproc.vim'                 " https://github.com/Shougo/vimproc.vim
" Plugin 'shawncplus/phpcomplete.vim'         " https://github.com/shawncplus/phpcomplete.vim
" Plugin 'ervandew/supertab'                  " https://github.com/ervandew/supertab
" Plugin 'SirVer/ultisnips'                   " https://github.com/SirVer/ultisnips
" Plugin 'honza/vim-snippets'                 " https://github.com/honza/vim-snippets
" Plugin 'Valloric/YouCompleteMe'             " https://github.com/Valloric/YouCompleteMe
" Plugin 'joonty/vim-taggatron'             " https://github.com/joonty/vim-taggatron

" FUZZY SEARCH
Plugin 'rking/ag.vim'                       " https://github.com/rking/ag.vim
Plugin 'fisadev/vim-ctrlp-cmdpalette'       " https://github.com/fisadev/vim-ctrlp-cmdpalette
Plugin 'Lokaltog/vim-easymotion'            " https://github.com/Lokaltog/vim-easymotion
Plugin 'tpope/vim-unimpaired'               " https://github.com/tpope/vim-unimpaired
Plugin 'Shougo/unite.vim'                   " https://github.com/Shougo/unite.vim
Plugin 'thinca/vim-unite-history'           " https://github.com/thinca/vim-unite-history

" MISC
Plugin 'xolox/vim-misc'                     " https://github.com/xolox/vim-misc

" UI
Plugin 'bling/vim-airline'                  " https://github.com/bling/vim-airline
Plugin 't9md/vim-choosewin'                 " https://github.com/t9md/vim-choosewin
Plugin 'flazz/vim-colorschemes'             " https://github.com/flazz/vim-colorschemes
Plugin 'nathanaelkane/vim-indent-guides'    " https://github.com/nathanaelkane/vim-indent-guides
Plugin 'kien/tabman.vim'                    " https://github.com/kien/tabman.vim
Plugin 'godlygeek/tabular'                  " https://github.com/godlygeek/tabular'
Plugin 'vim-scripts/ZoomWin'                " https://github.com/vim-scripts/ZoomWin


" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on


""""""""""""""""""""""""""""""
" SYNTAX
""""""""""""""""""""""""""""""
autocmd BufRead,BufNewFile *.txt set syntax=markdown
syntax on                     " Syntax highlighting


""""""""""""""""""""""""""""""
" LINES
""""""""""""""""""""""""""""""
set number                    " Enable line numbers
set ruler                     " Turn on the ruler
set number " show line numbers
set tw=79 " width of document (used by gd)
set nowrap " don't automatally wrap on load
set showbreak=... " visual cue for wrapping lines
set fo-=t " don't automatically wrap text when typing
set colorcolumn=80
set relativenumber
highlight ColorColumn ctermbg=233

"try to make possible to navigate within lines of wrapped lines
nmap <Down> gj
nmap <Up> gk
set fo=l

"Move line up/down
nnoremap <leader>k :move-2<CR>==
nnoremap <leader>j :move+<CR>==
xnoremap <leader>k :move-2<CR>gv=gv
xnoremap <leader>j :move'>+<CR>gv=gv


""""""""""""""""""""""""""""""
" CTRLP
""""""""""""""""""""""""""""""
map <leader>p :CtrlPCmdPalette<CR>


""""""""""""""""""""""""""""""
" BUFFERS
""""""""""""""""""""""""""""""
" Automatic reloading of .vimrc
autocmd! bufwritepost .vimrc source %
set autoread " reload file when changes happen in other editors

" bind Ctrl+<movement> keys to move around the windows, instead of using
" Ctrl+w + <movement>
" Every unnecessary keystroke that can be saved is good for your health :)
map <c-j> <c-w>j
map <c-k> <c-w>k
map <c-l> <c-w>l
map <c-h> <c-w>h
map <C-Tab> <C-W>w
imap <C-Tab> <C-O><C-W>w
cmap <C-Tab> <C-C><C-Tab>


""""""""""""""""""""""""""""""
" COPY & PASTE
""""""""""""""""""""""""""""""
set pastetoggle=<F2>
set clipboard=unnamed


""""""""""""""""""""""""""""""
" SESSION
""""""""""""""""""""""""""""""
let g:session_directory = "~/.vim/sessions"
let g:session_autoload = "no"
let g:session_autosave = "no"
let g:session_command_aliases = 1
nnoremap <leader>So :OpenSession-
nnoremap <leader>Ss :SaveSession-
nnoremap <leader>Sd :DeleteSession<CR>
nnoremap <leader>Sc :CloseSession<CR>


""""""""""""""""""""""""""""""
" MOUSE and BACKSPACE
""""""""""""""""""""""""""""""
" set mouse=a " on OSX press ALT and click
set bs=2 " make backspace behave like normal again

"allow backspacing over everything in insert mode
set backspace=indent,eol,start


""""""""""""""""""""""""""""""
" MACROS
""""""""""""""""""""""""""""""
let @h=":tabnew ~/devdocs/vim/vim_crib.txt"
" map sort function to a key
vnoremap <Leader>s :sort<CR>

" this mapping Enter key to <C-y> to chose the current highlight item
" and close the selection list, same as other IDEs.
" CONFLICT with some plugins like tpope/Endwise
inoremap <expr> <CR> pumvisible() ? "\<C-y>" : "\<C-g>u\<CR>"

""""""""""""""""""""""""""""""
" LEADER
""""""""""""""""""""""""""""""
let mapleader = "\<SPACE>"
let g:mapleader = "\<Space>"


""""""""""""""""""""""""""""""
" EASYMOTION
""""""""""""""""""""""""""""""
let g:EasyMotion_do_mapping = 0 " Disable default mappings

" Bi-directional find motion
" Jump to anywhere you want with minimal keystrokes, with just one key binding.
" `s{char}{label}`
nmap s <Plug>(easymotion-s)
" or
" `s{char}{char}{label}`
" Need one more keystroke, but on average, it may be more comfortable.
" nmap s <Plug>(easymotion-s2)

" Turn on case sensitive feature
" let g:EasyMotion_smartcase = 1

" JK motions: Line motions
map <Leader>j <Plug>(easymotion-j)
map <Leader>k <Plug>(easymotion-k)


""""""""""""""""""""""""""""""
" FOLDING
""""""""""""""""""""""""""""""
set foldmethod=indent
set foldnestmax=1
set nofoldenable "don't fold by default
" nnoremap <space> zA
" vnoremap <space> zA

" When opening the file, unfold all. Fold all with zM
au BufRead * normal zR
noremap <F11> :bprev<CR>
noremap <F12> :bnext<CR>


""""""""""""""""""""""""""""""
" BUFEXPLORER
""""""""""""""""""""""""""""""
nnoremap <leader>b :BufExplorer<cr>
let g:buffergator_suppress_keymaps = 1
nnoremap <leader>bg :BuffergatorToggle<cr>

"disable resizing when calling buffergator
let g:buffergator_autoexpand_on_split = 0

" nnoremap . <NOP>
set wildmode=list:longest "make cmdline tab completion similar to bash
set wildmenu "enable ctrl-n and ctrl-p to scroll thru matches
set wildignore=*.o,*.obj,*~ "stuff to ignore when tab completing


""""""""""""""""""""""""""""""
" MISC UI
""""""""""""""""""""""""""""""
set formatoptions-=o "dont continue comments when pushing o/O

"vertical/horizontal scroll off settings
set scrolloff=3
set sidescrolloff=7
set sidescroll=1
set encoding=utf-8

""""""""""""""""""""""""""""""
" SEARCH
""""""""""""""""""""""""""""""
" Bind nohl
" Removes highlight of your last search
" ``<C>`` stands for ``CTRL`` and therefore ``<C-n>`` stands for ``CTRL+n``
noremap <C-n> :nohl<CR>
vnoremap <C-n> :nohl<CR>
inoremap <C-n> :nohl<CR>


""""""""""""""""""""""""""""""
" FILES
""""""""""""""""""""""""""""""

" Quicksave command
noremap <C-Z> :update<CR>
vnoremap <C-Z> <C-C>:update<CR>
inoremap <C-Z> <C-O>:update<CR>

" Quick quit command
noremap <Leader>e :quit<CR> " Quit current window
noremap <Leader>E :qa!<CR> " Quit all windows


" easier moving between tabs
map <Leader>w <esc>:ChooseWin<CR>
map <Leader>t <esc>:TMToggle<CR>
map <Leader>n <esc>:tabprevious<CR>
map <Leader>m <esc>:tabnext<CR>


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" THEME
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set term=xterm
set t_Co=256
" let &t_AB="\e[48;5;%dm"
" let &t_AF="\e[38;5;%dm"
syntax on
" let g:solarized_termcolors=256
" let g:solarized_underline=0
" colorscheme wombat256mod
"dont load csapprox if there is no gui support - silences an annoying warning
let g:CSApprox_loaded = 1
syntax enable
set background=dark
" color molokai " https://github.com/tomasr/molokai

" Show whitespace
" MUST be inserted BEFORE the colorscheme command
autocmd ColorScheme * highlight ExtraWhitespace ctermbg=red guibg=red
" au InsertLeave * match ExtraWhitespace /\s\+$/

" Turn off bells
set noerrorbells visualbell t_vb=


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" AIRLINE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:airline#extensions#tabline#left_sep = ' '
let g:airline#extensions#tabline#left_alt_sep = '|'
let g:airline#extensions#tabline#enabled = 1
let g:airline_powerline_fonts = 1
let g:airline_theme='molokai'
let g:airline#extensions#tabline#show_buffers = 0
" let g:bufferline_echo=0
" let g:airline_left_sep = '»'
" let g:airline_left_sep = '▶'
" let g:airline_right_sep = '«'
" let g:airline_right_sep = '◀'


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" NERDTREE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let NERDTreeIgnore=['\~$', '\.swp$', '\.git', '\.hg', '\.svn', '\.bzr']
map <leader>x :NERDTreeToggle<CR>
" autocmd vimenter * if !argc() | NERDTree | endif
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" CTRLP
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
highlight Pmenu ctermbg=238 gui=bold
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'
let g:ctrlp_custom_ignore = '\.git$\|\.hg$\|\.svn$'
let g:ctrlp_working_path_mode = 'ra' " search for nearest ancestor like .git, .hg, and the directory of the current file
let g:ctrlp_match_window_bottom = 1 " show the match window at the top of the screen
let g:ctrlp_max_height = 8 " maxiumum height of match window
let g:ctrlp_switch_buffer = 'et' " jump to a file if it's open already
let g:ctrlp_use_caching = 1 " enable caching
let g:ctrlp_clear_cache_on_exit=0 " speed up by not removing clearing cache evertime
let g:ctrlp_show_hidden = 1 " show me dotfiles
let g:ctrlp_mruf_max = 250 " number of recently opened files


"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" UNITE
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:unite_source_history_yank_enable = 1
let g:unite_data_directory='~/.vim/.cache/unite'
let g:unite_source_rec_max_cache_files=5000
let g:unite_enable_start_insert = 1
let g:unite_split_rule = "botright"
let g:unite_force_overwrite_statusline = 0
let g:unite_winheight = 10


" Use the fuzzy matcher for everything
" call unite#filters#matcher_default#use(['matcher_fuzzy'])

" Use the rank sorter for everything
" call unite#filters#sorter_default#use(['sorter_rank'])

nnoremap <space>/ :Unite grep:.<cr>
nnoremap <space>y :Unite history/yank<cr>
nnoremap <leader>f :Unite file_rec<cr>
nnoremap <leader>c :Unite colorscheme -auto-preview<cr>

autocmd FileType unite call s:unite_settings()

function! s:unite_settings()
  let b:SuperTabDisabled=1
"imap <buffer> <C-j> <NOP>
  imap <buffer> <C-j> <Plug>(unite_select_next_line)
  imap <buffer> <C-k> <Plug>(unite_select_previous_line)
  imap <silent><buffer><expr> <C-x> unite#do_action('split')
  imap <silent><buffer><expr> <C-v> unite#do_action('vsplit')
  imap <silent><buffer><expr> <C-t> unite#do_action('tabopen')

  nmap <buffer> <ESC> <Plug>(unite_exit)
endfunction



