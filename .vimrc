colorscheme spacegray

syntax on
filetype plugin indent on

set visualbell

set wildmenu
set wildmode=list:longest,full

set splitright
set splitbelow

set hidden

" set a column at 100 chars
set colorcolumn=100

set encoding=utf8
" set guifont=Monaco:h16
set guioptions-=T guioptions-=e guioptions-=L guioptions-=r
set shell=bash

augroup vimrc
  autocmd!
  autocmd GuiEnter * set columns=120 lines=70 number
augroup END

" format elixir code with formatprg
autocmd BufWritePost *.exs silent :!mix format %
autocmd BufWritePost *.ex silent :!mix format %

" use autoread for elixir formatting
set autoread

" Add comma as leader
:nmap , \

map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" vim tab navigation
nnoremap th :tabfirst<CR>
nnoremap tj :tabprev<CR>
nnoremap tk :tabnext<CR>
nnoremap tl :tablast<CR>
nnoremap tc :tabclose<CR>
nnoremap tn :tabnew<CR>

" disable arrow navigation keys
inoremap  <Up>    <NOP>
inoremap  <Down>  <NOP>
inoremap  <Left>  <NOP>
inoremap  <Right> <NOP>
noremap   <Up>    <NOP>
noremap   <Down>  <NOP>
noremap   <Left>  <NOP>
noremap   <Right> <NOP>

" show line numbers
set number

" Save with leader + w
nnoremap <Leader>w :w<CR>
nnoremap <Leader>q :q<CR>
nnoremap <Leader>x :x<CR>

" leader + vv splits pane and opens Ctrl P
map <Leader>vv :vsp<cr><C-p>
map <Leader> <esc>
map <Leader>ss :sp<cr><C-p>
map <Leader> <esc>

" abreeevs
inoreabbrev bpry require 'pry'; binding.pry
inoreabbrev ioi \|> IO.inspect(label: "INSPECT")

" format JSON with python
nnoremap <Leader>j :%!python -m json.tool<cr>

" Use syntastic to check elixir syntax
" COMMENTED OUT BECAUSE IT'S DAMN SLOW
" let g:syntastic_elixir_checkers=["elixir"]
" let g:syntastic_enable_elixir_checker=1

let g:jsx_ext_required = 0

" Better search behavior
set hlsearch
set incsearch
set ignorecase
set smartcase

" Unhighlight search results
map <Leader><space> :nohl<cr>

" Don't scroll off the edge of the page
set scrolloff=5

" This uses Ack.vim to search for the word under the cursor
nnoremap <leader><bs> :Ag! '\b<c-r><c-w>\b'<cr>

" NERDTree configuration
let NERDTreeIgnore=['\~$', 'tmp', '\.git', '\.bundle', '.DS_Store', 'tags', '.swp']
let NERDTreeShowHidden=1
let g:NERDTreeDirArrows=0
map <Leader>n :NERDTreeToggle<CR>
map <Leader>fnt :NERDTreeFind<CR>

" BufExplorer
noremap <leader>bb :BufExplorer<CR>

" split windows
nnoremap <C-w>- :spl<cr>
nnoremap <C-w><bar> :vsp<cr>

set softtabstop=2 shiftwidth=2 expandtab

" toggle quickfix with <Leader> c
let g:toggle_list_no_mappings=1
nmap <script> <silent> <Leader>c :call ToggleQuickfixList()<CR>

" close windows with leader + q
nnoremap <Leader>q :q<CR>

" force close with leader + Q
nnoremap <Leader>Q :q!<CR>

" ctrlp.vim config
if get(g:, 'loaded_ctrlp', 1)
  let g:ctrlp_match_window_reversed = 0
  let g:ctrlp_working_path_mode = 'a'
  let g:ctrlp_max_height = 20
  let g:ctrlp_match_window_bottom = 0
  let g:ctrlp_switch_buffer = 0
  let g:ctrlp_custom_ignore = '\v.DS_Store|.sass-cache|.scssc|tmp|.bundle|.git|node_modules|vendor|bower_components$|_build$|deps|javascripts|log'
endif

command! -nargs=0 -bar Qargs execute 'args' QuickfixFilenames()
function! QuickfixFilenames()
  " Building a hash ensures we get each buffer only once
  let buffer_numbers = {}
  for quickfix_item in getqflist()
    let buffer_numbers[quickfix_item['bufnr']] = bufname(quickfix_item['bufnr'])
  endfor
  return join(map(values(buffer_numbers), 'fnameescape(v:val)'))
endfunction

" Disable vim backups
set nobackup
set nowritebackup

" Disable swapfile
set noswapfile

" airline
let g:airline_powerline_fonts=1
if !exists('g:airline_symbols')
  let g:airline_symbols = {}
endif
let g:airline_symbols.space = "\ua0"

" easytags needs to be async because dashboard is big and slow
let g:easytags_async=1

" Spell check my git commits so I don't look wuite as bad
autocmd FileType gitcommit setlocal spell
