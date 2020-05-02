if &compatible
  set nocompatible
endif

packadd minpac
call minpac#init()
call minpac#add('tpope/vim-surround')
"call minpac#add('tpope/vim-fugitive')
call minpac#add('k-takata/minpac', {'type':'opt'})



set fileformat=unix
    " no double period after .?! when using join command
set nojoinspaces

set background=dark
"colorscheme codeschool
"colorscheme jellybeans
set relativenumber
set number

" ===========[ General Vim behavior ]=========================================

syntax enable
" allows hide buffer with unsaved changes without explicit overriding
set hidden
" splitting a window will put the new window right of the current one
set splitright
" splitting a window will put the new window below the current one
set splitbelow
" Tab indentation levels every four columns
set tabstop=4
" Indent/outdent by four columns
set shiftwidth=4
set softtabstop=4
" Convert all tabs that are typed into spaces
set expandtab
" Always indent/outdent to nearest tabstop
set shiftround

" set clipboard=unnamedplus
set colorcolumn=81
set virtualedit=block
set foldmethod=syntax
" keep cursor in the middle of the screen
" set scrolloff=99999
" Enable file type detection
filetype plugin indent on

let g:mapleader = "\<Space>"
let g:localmapleader = "\\"
" exit insert mode
inoremap jk <Esc>

" ===========[ Better j, k for long (wrapped) lines ]=========================

nnoremap j gj
nnoremap k gk
nnoremap gj j
nnoremap gk k

" ===========[ Show trailing whitespaces ]====================================

set listchars=tab:▸\ ,trail:· ",eol:¬
set list

" ===========[ Searching ]====================================================

set hlsearch
set incsearch
set ignorecase
set smartcase
" <leader>n to hide highlighted search results
nnoremap <silent> <leader>n :noh<CR>

nnoremap //   /<C-R>/
" nnoremap ///  /<C-R>/\<BAR>

" ===========[ Makefile special settings ]====================================

if has('autocmd')
    autocmd FileType make setlocal ts=8 sts=8 sw=8 noexpandtab
endif

" ===========[ Lua special settings ]=========================================

if has("autocmd")
    autocmd FileType lua setlocal ts=3 sts=3 sw=3
endif

" ===========[ Tex special settings ]=========================================
set spelllang=en_us,cs

if has("autocmd")
    autocmd FileType tex,plaintex,latex setlocal spell tw=80 | syntax spell toplevel
    autocmd FileType gitcommit setlocal spell
endif

" ===========[ Tabularize maps ]==============================================

"    nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
"    vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
"    nmap <Leader>a, :Tabularize /,\s*\zs/l0l1<CR>
"    vmap <Leader>a, :Tabularize /,\s*\zs/l0l1<CR>
"    nmap <Leader>a< :Tabularize /,/l0c1<CR>
"    vmap <Leader>a< :Tabularize /,/l0c1<CR>
"    nmap <Leader>am :Tabularize /\w\+\zs \ze\s*\w\+/l0<CR>:Tabularize / m_.*/l0<CR>
"    vmap <Leader>am :Tabularize /\w\+\zs \ze\s*\w\+/l0<CR>:Tabularize / m_.*/l0<CR>
"    nmap <Leader>af :Tabularize /^[^(]*\zs\s\+\~\?\S\+\ze\s*(/l0l0<CR>
"    vmap <Leader>af :Tabularize /^[^(]*\zs\s\+\~\?\S\+\ze\s*(/l0l0<CR>

" ===========[ Use persistent undo ]==========================================

if has('persistent_undo')
    " Save all undo files in a single location (less messy, more risky)...
    let g:myundodir='/tmp/.VIM_UNDO_FILES'
    call system('mkdir -p ' . g:myundodir)
    let &undodir=g:myundodir

    " Save a lot of back-history...
    set undolevels=5000

    " Actually switch on persistent undo
    set undofile
endif

" ===========[ Goto last location in non-empty files ]========================

autocmd BufReadPost *  if line("'\"") > 1 && line("'\"") <= line("$")
                    \|  exe "normal! g`\""
                    \|  endif

" ===========[ Switching between buffers/tabs ]===============================

nnoremap <Leader>bn :bn<CR>
nnoremap <Leader>bp :bp<CR>
nnoremap <Leader>tn :tabn<CR>
nnoremap <Leader>tp :tabp<CR>

" ===========[ Switching between windows ]====================================

nmap <Leader>h <c-w>h
nmap <Leader>j <c-w>j
nmap <Leader>k <c-w>k
nmap <Leader>l <c-w>l

