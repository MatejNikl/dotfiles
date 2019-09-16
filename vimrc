if &compatible
  set nocompatible
endif

" Add minpac plugin manager + plugins
" source ~/.vim/packages.vim


" Deocomplete settings
" let g:deoplete#enable_at_startup = 1
" Don't show the scratch window
"  set completeopt-=preview
" Hide the scratch window after selecting completion
" autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
" Deoplete c/c++ settings
" let g:deoplete#sources#clang#libclang_path = '/usr/lib/llvm-3.8/lib/libclang.so.1'
" let g:deoplete#sources#clang#clang_header = '/usr/include/clang'


" Asynchronous Lint Engine
" let g:ale_enabled = 1
" nmap <silent> <c-j> <Plug>(ale_next_wrap)
" nmap <silent> <c-k> <Plug>(ale_previous_wrap)
" nmap <silent> <script> <leader>l :call ToggleLocationList()<CR>
" let g:ale_sign_column_always = 1

" Neosnippet expand on tab
" imap <silent> <TAB> <Plug>(neosnippet_expand_or_jump)


" Lightline settings
" set laststatus=2
" let g:lightline = { 'colorscheme': 'jellybeans' }
" let g:lightline.component_expand = {
"      \  'linter_checking': 'lightline#ale#checking',
"      \  'linter_warnings': 'lightline#ale#warnings',
"      \  'linter_errors': 'lightline#ale#errors',
"      \  'linter_ok': 'lightline#ale#ok',
"      \ }
" let g:lightline.component_type = {
"      \     'linter_checking': 'warning',
"      \     'linter_warnings': 'warning',
"      \     'linter_errors': 'error',
"      \     'linter_ok': 'left',
"      \ }
" let g:lightline.active = { 'right': [[ 'linter_checking', 'linter_errors', 'linter_warnings', 'linter_ok' ]] }

" call camelcasemotion#CreateMotionMappings('<leader>')

    set fileformat=unix
    " no double period after .?! when using join command
    set nojoinspaces



" ===========[ color scheme! ]================================================

    set background=dark
    "colorscheme codeschool
    "colorscheme jellybeans
    let g:jellybeans_use_term_italics = 1
    " relative line numbers
    set relativenumber
    " actual line number for current line
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

" ===========[ EasyMotion ]===================================================
    " Disable default mappings
"    let g:EasyMotion_do_mapping = 0
"    let g:EasyMotion_smartcase = 1
"
"    map <Leader> <Plug>(easymotion-prefix)
"    nmap <Leader>s <Plug>(easymotion-s)
"
"    map <Leader>l <Plug>(easymotion-lineforward)
"    map <Leader>j <Plug>(easymotion-j)
"    map <Leader>k <Plug>(easymotion-k)
"    map <Leader>h <Plug>(easymotion-linebackward)
"
"    let g:EasyMotion_startofline = 0 " keep cursor column when JK motion

" ===========[ Tabularize maps ]==============================================

    nmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
    vmap <Leader>a= :Tabularize /^[^=]*\zs=<CR>
    nmap <Leader>a, :Tabularize /,\s*\zs/l0l1<CR>
    vmap <Leader>a, :Tabularize /,\s*\zs/l0l1<CR>
    nmap <Leader>a< :Tabularize /,/l0c1<CR>
    vmap <Leader>a< :Tabularize /,/l0c1<CR>
"    nmap <Leader>am :Tabularize /\w\+\zs \ze\s*\w\+/l0<CR>:Tabularize / m_.*/l0<CR>
"    vmap <Leader>am :Tabularize /\w\+\zs \ze\s*\w\+/l0<CR>:Tabularize / m_.*/l0<CR>
"    nmap <Leader>af :Tabularize /^[^(]*\zs\s\+\~\?\S\+\ze\s*(/l0l0<CR>
"    vmap <Leader>af :Tabularize /^[^(]*\zs\s\+\~\?\S\+\ze\s*(/l0l0<CR>


" ===========[ UtilSnips ]====================================================

"    let g:UltiSnipsExpandTrigger="<c-j>"
"    let g:UltiSnipsJumpForwardTrigger="<c-j>"
"    let g:UltiSnipsJumpBackwardTrigger="<c-k>"
"    let g:UltiSnipsListSnippets="<c-e>"
"    let g:UltiSnipsEditSplit="vertical"


" ===========[ YouCompleteMe ]================================================

"    let g:ycm_global_ycm_extra_conf='~/dotfiles/vim/ycm_extra_conf.py'
"    let g:ycm_autoclose_preview_window_after_insertion=1
"    let g:ycm_always_populate_location_list=1
"    let g:ycm_enable_diagnostic_signs=0
"    let g:ycm_confirm_extra_conf=0
"    " YCMs goto definition/declaration
"    nnoremap <c-s-{> :YcmCompleter GoTo<CR>
"    " force recompile
"    nnoremap <F5> :YcmForceCompileAndDiagnostics<CR>
"
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

" ===========[ TagBar ]=======================================================
    nnoremap <silent> <Leader>t :TagbarOpenAutoClose<CR>
    let g:tagbar_left = 1      "spawn on the left
    let g:tagbar_width = 30
    let g:tagbar_autofocus = 1 "autojump to the tagbar when opened
    let g:tagbar_compact = 1   "hide help

" ===========[ ListToggle ]===================================================

"   let g:lt_location_list_toggle_map = '<leader>l'
"   let g:lt_quickfix_list_toggle_map = '<leader>f'

" ===========[ CtrlP ]========================================================

"    let g:ctrlp_cmd = 'CtrlPMixed'
"    let g:ctrlp_custom_ignore = {
"  \ 'dir':  '\v[\/]\.(git|hg|svn)$',
"  \ 'file': '\v\.(o|so|swp|zip)$',
"  \ 'link': 'some_bad_symbolic_links',
"  \ }

" ===========[ Strip trailing whitespaces ]===================================
    fun! StripTrailingWhitespaces()
        let l:l = line('.')
        let l:c = col('.')
        %s/\s\+$//e
        call cursor(l:l, l:c)
    endfun
    nnoremap <F2> :call StripTrailingWhitespaces()<CR>
    nnoremap <leader>g gqap
