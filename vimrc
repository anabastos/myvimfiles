" .vimrc
" Author: Ana Luiza <analpbastos@gmail.com>
" Source: http://github.com/anabastos/myvimfiles

" *~~ Plug setup ~~*
call plug#begin('~/.vim/plugged')

" *~~ Plugins ~~*
" * Base *
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'teranex/jk-jumps.vim'
Plug 'scrooloose/nerdtree'
Plug 'milkypostman/vim-togglelist'
Plug 'jeffkreeftmeijer/vim-numbertoggle'
Plug 'nathanaelkane/vim-indent-guides'
Plug 'ConradIrwin/vim-bracketed-paste'
Plug 'sjl/vitality.vim'
Plug 'christoomey/vim-tmux-navigator'
Plug 'metakirby5/codi.vim'
Plug 'AndrewRadev/splitjoin.vim'
Plug 'machakann/vim-highlightedyank'
Plug 'mhinz/vim-startify'
Plug 'tpope/vim-abolish'
Plug 'airblade/vim-gitgutter'
Plug 'tpope/vim-eunuch'
Plug 'edkolev/tmuxline.vim'
Plug 'bfredl/nvim-miniyank'
Plug 'tpope/vim-sleuth'
Plug 'duggiefresh/vim-easydir'
Plug 'junegunn/goyo.vim'
Plug 'wikitopian/hardmode'
Plug 'vimwiki/vimwiki'

" * Support *
Plug 'tpope/vim-dispatch'
Plug 'embear/vim-localvimrc'
Plug 'editorconfig/editorconfig-vim'
Plug 'tpope/vim-repeat'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-unimpaired'
Plug 'Raimondi/delimitMate'
Plug 'msanders/snipmate.vim'
Plug 'tomtom/tcomment_vim'
Plug 'Shougo/vimproc.vim'

" * Colorschemes *
Plug 'sjl/badwolf'
Plug 'dracula/vim'
Plug 'tomasr/molokai'

" * Languages *
Plug 'b4winckler/vim-objc'
Plug 'rodjek/vim-puppet'
Plug 'nsf/gocode', { 'rtp': 'nvim', 'do': '~/.config/nvim/plugged/gocode/nvim/symlink.sh' }
Plug 'fatih/vim-go'
Plug 'dag/vim-fish'
Plug 'pangloss/vim-javascript'
Plug 'gkz/vim-ls'
Plug 'kchmck/vim-coffee-script'
Plug 'hashivim/vim-terraform'
Plug 'hashivim/vim-packer'
Plug 'hashivim/vim-consul'
Plug 'hashivim/vim-vaultproject'
Plug 'OrangeT/vim-csharp'
Plug 'mustache/vim-mustache-handlebars'
Plug 'ekalinin/Dockerfile.vim'
Plug 'digitaltoad/vim-pug'
Plug 'elixir-lang/vim-elixir'
Plug 'slashmili/alchemist.vim'
Plug 'vim-erlang/vim-erlang-runtime'
Plug 'vim-erlang/vim-erlang-compiler'
Plug 'vim-erlang/vim-erlang-omnicomplete'
Plug 'vim-erlang/vim-erlang-tags'
Plug 'osyo-manga/vim-monster'
Plug 'zchee/deoplete-jedi'
Plug 'uarun/vim-protobuf'
Plug 'CyCoreSystems/vim-cisco-ios'
Plug 'tpope/vim-markdown'
Plug 'jtratner/vim-flavored-markdown'
Plug 'evanmiller/nginx-vim-syntax'
Plug 'leafgarland/typescript-vim'
Plug 'PProvost/vim-ps1'
Plug 'Matt-Deacalion/vim-systemd-syntax'
Plug 'zainin/vim-mikrotik'
Plug 'rust-lang/rust.vim'
Plug 'jodosha/vim-godebug'

" * JS Beautify *
Plug 'michalliu/jsruntime.vim'
Plug 'michalliu/jsoncodecs.vim'

" * Omnicompletion *
Plug 'neomake/neomake'
Plug 'Shougo/deoplete.nvim'
Plug 'carlitux/deoplete-ternjs'
Plug 'zchee/deoplete-go', { 'do': 'make' }
" Plug 'zchee/deoplete-clang'
Plug 'OmniSharp/omnisharp-vim'
Plug 'Robzz/deoplete-omnisharp'
Plug 'mhartington/deoplete-typescript'

" * Search *
Plug 'haya14busa/incsearch.vim'
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'
Plug 'majutsushi/tagbar'

" * Git *
Plug 'tpope/vim-fugitive'

" *~~ Plug end ~~*
call plug#end()

" *~~ Basic options ~~*
" ALWAYS use fish
set shell=/bin/fish

" * NeoVim Options *
" Display incomplete commands.
set noshowcmd
" Display the mode you're in.
set showmode

" Intuitive backspacing.
set backspace=indent,eol,start
" Handle multiple buffers better.
set hidden

" Enhanced command line completion.
set wildmenu
" Complete files like a shell.
set wildmode=list:longest

" Case-insensitive searching.
set ignorecase
" But case-sensitive if expression contains a capital letter.
set smartcase

" Show line numbers.
set number
" Show cursor position.
set ruler

" Highlight matches as you type.
set incsearch
" Don't highlight matches.
set nohlsearch

" Turn off line wrapping.
set nowrap    
" Show 3 lines of context around the cursor.
set scrolloff=3

" Set the terminal's title
set title
" No beeping.
set visualbell

" Don't make a backup before overwriting a file.
set nobackup
" And again.
set nowritebackup
" Keep swap files in one location
set directory=$HOME/.vim/tmp//,.

" Global tab width.
set tabstop=4
" And again, related.
set shiftwidth=4

" Files open expanded
set foldlevelstart=50
" Use decent folding
set foldmethod=indent

" Show the status line all the time
set laststatus=2
" Useful status information at bottom of screen
set statusline=[%n]\ %<%.99f\ %h%w%m%r%y\ %{exists('*CapsLockStatusline')?CapsLockStatusline():''}%=%-16(\ %l,%c-%v\ %)%P

" Always diff using vertical mode
set diffopt+=vertical

" Automatically reads changed files
set autoread

" Enable syntax highlighting
syntax on

" Sane defaults
set expandtab
set shiftwidth=4
set tabstop=4

" Sets the colorscheme for terminal sessions too.
colorscheme dracula

" Leader = ,
let mapleader = ","
let maplocalleader = "'"

" Open preview window below the code
set splitbelow

" Remove 'press any key to continue'
set cmdheight=1

" Disable fucked-up SQL completion
let g:omni_sql_no_default_maps = 1

" Completion
set completeopt=menu,noselect

" augroup completion
"   autocmd!
"   autocmd InsertLeave * pclose
" augroup end

" Incsearch
set inccommand=split
" }}}
" ##### General mappings  {{{
" ##### Tabs {{{
nnoremap <leader>t :tabnew<cr>
nnoremap <leader>e :tabedit
nnoremap <leader>n :tabnext<cr>
nnoremap <leader>p :tabprevious<cr>
" }}}
" ##### IDE Like {{{
nmap <leader>1 :TagbarToggle<CR>
nmap <leader>2 :NERDTreeToggle<CR>
" }}}
" ##### Panes {{{
fun! RemapPaneArrows()
  nnoremap <buffer> <silent> <Right> :vertical resize +5<cr>
  nnoremap <buffer> <silent> <Left> :vertical resize -5<cr>
  nnoremap <buffer> <silent> <Down> :resize +5<cr>
  nnoremap <buffer> <silent> <Up> :resize -5<cr>
endfun

augroup remappanesarrows
	autocmd!
	autocmd VimEnter,BufNewFile,BufReadPost,BufEnter * silent! call RemapPaneArrows()
augroup end
" }}}
" ##### Hard Mode {{{
fun! RemapArrows()
  inoremap <buffer> <silent> <Right> <nop>
  inoremap <buffer> <silent> <Left> <nop>
  inoremap <buffer> <silent> <Up> <nop>
  inoremap <buffer> <silent> <Down> <nop>

  vnoremap <buffer> <silent> <Right> <nop>
  vnoremap <buffer> <silent> <Left> <nop>
  vnoremap <buffer> <silent> <Up> <nop>
  vnoremap <buffer> <silent> <Down> <nop>
endfun

augroup hardmode
	autocmd!
	autocmd VimEnter,BufNewFile,BufReadPost * silent! call RemapArrows()
augroup end
" }}}
" ##### Line movement {{{
" Go to start of line with H and to the end with $
noremap H ^
noremap L $

" Emacs bindings in command-line mode
cnoremap <C-A> <home>
cnoremap <C-E> <end>
" }}}
" ##### Folding {{{
" Toggles folding with space
nnoremap <Space> za
" Open all folds
nnoremap zO zR
" Close all folds
nnoremap zC zM
" Close current fold
nnoremap zc zc
" Close all folds except the current one
nnoremap zf mzzMzvzz
" }}}
" ##### Search {{{
map /  <Plug>(incsearch-forward)
map ?  <Plug>(incsearch-backward)
map g/ <Plug>(incsearch-stay)
" }}}
" ##### YouCompleteMe {{{
nnoremap <localleader>gd :YcmCompleter GoToDefinition<cr>
nnoremap <localleader>gr :YcmCompleter GoToReferences<cr>
nnoremap <localleader>gk :YcmCompleter GetDoc<cr>
nnoremap <localleader>gt :YcmCompleter GetType<cr>
nnoremap <localleader>gR :YcmCompleter RefactorRename 
" }}}
" ##### Spell {{{
set spelllang=en_us

nnoremap ,sc :set spell!<cr>
" }}}
" ##### Misc {{{
" Edit and load vimrc
nnoremap <leader>ev :vsplit $MYVIMRC<cr>
nnoremap <leader>sv :source $MYVIMRC<cr>

" Wrap current paragraph
noremap <leader>w gqap

" Toggles hlsearch
nnoremap <leader>hs :set hlsearch!<cr>

" Maps <C-C> to <esc>
noremap <C-C> <esc>

" Go full-screen
nnoremap <leader>fs :set lines=999 columns=9999<cr>

" Set current file executable
nnoremap <leader>xx :!chmod +x %<cr>

" Close Quickfix and Preview
nnoremap <leader>q :pclose<cr>:cclose<cr>

" OS Clipboard
vnoremap <leader>c "*y
vnoremap <leader>v "*p
vnoremap <leader>V "*P
nnoremap <leader>v "*p
nnoremap <leader>V "*P

" Fix tmux navigation
nnoremap <silent> <BS> :TmuxNavigateLeft<cr>
" }}}
" }}}
" ##### Plugin settings  {{{
" ##### Fugitive  {{{
" (thanks to Steve Losh's vimrc)
nnoremap <leader>gd :Gdiff<cr>
nnoremap <leader>gs :Gstatus<cr>
nnoremap <leader>gw :Gwrite<cr>
nnoremap <leader>ga :Gadd<cr>
nnoremap <leader>gb :Gblame<cr>
nnoremap <leader>gci :Gcommit<cr>
nnoremap <leader>ge :Gedit<cr>
nnoremap <leader>gm :Gmove
nnoremap <leader>gr :Gread<cr>
nnoremap <leader>grm :Gremove<cr>
nnoremap <leader>gp :Git push
" }}}
" ##### NERDTree  {{{
noremap <leader>ft :NERDTreeToggle<CR>

" Don't fuck up vim's default file browser
let g:NERDTreeHijackNetrw = 0
let NERDTreeMapActivateNode='<space>'
" }}}
" ##### Airline  {{{
let g:airline_powerline_fonts = 1
let g:airline_theme = 'papercolor'
let g:airline_section_warning = ''
let g:airline_inactive_collapse = 0
let g:airline#extensions#default#section_truncate_width = {
  \ 'a': 60,
  \ 'b': 80,
  \ 'x': 100,
  \ 'y': 100,
  \ 'z': 60,
\ }
" }}}
" ##### FZF  {{{
let $FZF_DEFAULT_COMMAND = 'ag -g ""'

nnoremap <C-P> :Files<cr>
nnoremap <C-F> :Ag 
" }}}
" ##### miniyank  {{{
map p <Plug>(miniyank-autoput)
map P <Plug>(miniyank-autoPut)

map <C-m> <Plug>(miniyank-cycle)
" }}}
" ##### Number toggle  {{{
let g:NumberToggleTrigger="<leader>ll"
"}}}
" ##### togglelist {{{
let g:toggle_list_copen_command="Copen"
" }}}
" ##### localvimrc {{{
let g:localvimrc_whitelist=$HOME.'/src/github.com/pagarme/.*'
let g:localvimrc_persistent=1
" }}}
" ##### editorconfig {{{
let g:EditorConfig_exclude_patterns = ['fugitive://.*', 'scp://.*']
" }}}
" ##### Syntastic {{{
let g:syntastic_enable_highlighting = 0
let g:syntastic_enable_balloons = 0
" }}}
" ##### deoplete {{{
let g:deoplete#enable_at_startup = 1
" }}}
" ##### deoplete-go {{{
let g:deoplete#sources#go#sort_class = ['package', 'func', 'type', 'var', 'const']
let g:deoplete#sources#go#use_cache = 1
" }}}
" ##### monster (ruby) {{{
let g:monster#completion#rcodetools#backend = "async_rct_complete"
" }}}
" ##### Neomake {{{
augroup neomake_save_linter
	autocmd!
	autocmd BufWritePost * Neomake
augroup end

let g:neomake_highlight_columns = 1
let g:neomake_javascript_standard_maker = { 'errorformat': '%E %f:%l:%c: %m' }
let g:neomake_puppet_enabled_makers = ['puppet', 'puppetlint']
" }}}
" ##### vim-tmuxline.vim {{{
let g:airline#extensions#tmuxline#enabled = 0
let g:tmuxline_preset = {
    \'a'       : ['#(whoami)', '#S'],
    \'win'     : ['#I', '#W'],
    \'cwin'    : ['#I', '#W'],
    \'x'       : ['#{prefix_highlight}'],
    \'z'       : ['On: #{online_status}', '#{battery_icon} #{battery_percentage}', '%R'],
    \'options' : {'status-justify' : 'left'}}
" }}}
" ##### terraform {{{
let g:terraform_fmt_on_save = 1
" }}}
" ##### vim-go {{{
au FileType go nmap <Leader>iD <Plug>(go-def-split)
au FileType go nmap <Leader>id <Plug>(go-def-vertical)
au FileType go nmap <Leader>iH <Plug>(go-doc)
au FileType go nmap <Leader>ih <Plug>(go-doc-vertical)
au FileType go nmap <Leader>ii <Plug>(go-implements)
au FileType go nmap <Leader>rr <Plug>(go-rename)
au FileType go nmap <Leader>rI <Plug>(go-imports)
" }}}
" ##### vim-wiki {{{
let g:vimwiki_ext2syntax = {'.md': 'markdown',
                          \ '.mkd': 'markdown',
                          \ '.wiki': 'media'}
" }}}
" ##### OmniSharp {{{
let g:OmniSharp_selector_ui = 'fzf'
let g:OmniSharp_server_type = 'roslyn'
let g:OmniSharp_timeout = 10

augroup omnisharp
  autocmd!

  autocmd FileType cs nnoremap <leader>b :wa!<cr>:OmniSharpBuildAsync<cr><Paste>
  autocmd CursorHold *.cs call OmniSharp#TypeLookupWithoutDocumentation()
augroup END
" }}}
" }}}
" ##### Filetype-specific  {{{
" ##### Ruby  {{{
" Specific shiftwidth for ruby files
autocmd FileType ruby set shiftwidth=2
autocmd FileType ruby set tabstop=2
" Convert tabs to spaces in Ruby files
autocmd FileType ruby set expandtab

" But not for erb files...
autocmd FileType eruby set shiftwidth=4
autocmd FileType eruby set tabstop=4
"
" Remaps textobj-rubyblock's bindings to vim's defaults
autocmd FileType ruby map aB ar
autocmd FileType ruby map iB ir
" }}}
" ##### Puppet  {{{
" Specific shiftwidth for puppet files
autocmd BufRead,BufNewFile *.pp set filetype=puppet
autocmd BufRead,BufNewFile Puppetfile set filetype=ruby

" And custom tab sizes too
autocmd FileType puppet set shiftwidth=2
autocmd FileType puppet set tabstop=2
" }}}
" ##### Markdown  {{{
" Sets markdown syntax for *.md files.
autocmd BufRead,BufNewFile *.md,*.markdown set filetype=ghmarkdown

" Wrap markdown files.
autocmd BufRead,BufNewFile *.md set wrap
" }}}
" ##### JavaScript  {{{
" Sets html syntax for *.ejs files.
autocmd BufRead,BufNewFile *.ejs set filetype=html
" }}}
" ##### Vim {{{
" Make vimrcs open folded
autocmd FileType vim set foldlevel=0
autocmd FileType vim set foldmethod=marker
" }}}
" ##### XML {{{
" Automatically format XML files
nnoremap <leader>xb :%s,>[ <tab>]*<,>\r<,g<cr> gg=G
" }}}
" ##### LiveScript {{{
autocmd BufRead,BufNewFile *.ls set filetype=ls
autocmd FileType ls set shiftwidth=2
autocmd FileType ls set tabstop=2
" }}}
" ##### YAML {{{
autocmd FileType yaml set shiftwidth=2
autocmd FileType yaml set tabstop=2
" }}}
" ##### LookML {{{
" Sets YAML syntax for *.lookml files.
autocmd BufRead,BufNewFile *.lookml set filetype=yaml
" }}}
" ##### Erlang {{{
autocmd BufRead,BufNewFile *.erl set filetype=erlang
autocmd FileType erlang set shiftwidth=2
autocmd FileType erlang set tabstop=2
" }}}
" ##### Elixir {{{
autocmd FileType elixir set shiftwidth=2
autocmd FileType elixir set tabstop=2
autocmd FileType elixir set tabstop=2
autocmd FileType elixir set expandtab
" }}}
" ##### Go {{{
autocmd FileType go set foldmethod=syntax
" }}}
" ##### Terraform {{{
autocmd FileType terraform set shiftwidth=2
autocmd FileType terraform set tabstop=2
autocmd FileType terraform set expandtab
" }}}
" ##### Docker {{{
autocmd BufRead,BufNewFile Dockerfile* set filetype=dockerfile
autocmd BufRead,BufNewFile Rockerfile* set filetype=dockerfile
" }}}
" }}}
