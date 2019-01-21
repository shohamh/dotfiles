if has('nvim')
	" Neovim specific commands
	" Specify a directory for plugins
	call plug#begin('~/.local/share/nvim/plugged')
else
	" Standard vim specific commands
	call plug#begin('~/.vim/plugged')
endif

Plug 'chriskempson/base16-vim'
Plug 'Shougo/deoplete.nvim', 
Plug 'Shougo/neco-vim'
Plug 'sebastianmarkow/deoplete-rust'
"Plug 'SirVer/ultisnips'
"Plug 'autozimu/LanguageClient-neovim', {'do':':UpdateRemotePlugins'}
Plug 'Shougo/denite.nvim'
Plug 'Shougo/echodoc.vim'
Plug 'vim-airline/vim-airline'


" Initialize plugin system
call plug#end()

" Required for operations modifying multiple buffers like rename.
set hidden

" let g:deoplete#sources#rust#racer_binary = $HOME/.cargo/bin/racer


" let g:deoplete#sources#rust#rust_source_path = $HOME/rust/src
"                This variable sets the full path to the rust source.
"                e.g. `$HOME/rust/src`
"                (REQUIRED)

"                                     *g:deoplete#sources#rust#show_duplicates*
" let g:deoplete#sources#rust#show_duplicates 0
"                Set whether duplicate matches should be filtered.
"                Set to 0 to filter duplicates.
"                Default: 1
"                (OPTIONAL)

" g:deoplete#sources#rust#disable_keymap
"                Set to 1 to disable default keymaps.
"                See |deoplete-rust-mappings|.
"                (OPTIONAL)

"                            *g:deoplete#sources#rust#documentation_max_height*
" g:deoplete#sources#rust#documentation_max_height
 
let g:LanguageClient_serverCommands = {
    \ 'rust': ['rustup', 'run', 'nightly', 'rls'],
    \ 'javascript': ['/opt/javascript-typescript-langserver/lib/language-server-stdio.js'],
    \ }

" Automatically start language servers.
let g:LanguageClient_autoStart = 1

nnoremap <silent> K :call LanguageClient_textDocument_hover()<CR>
nnoremap <silent> gd :call LanguageClient_textDocument_definition()<CR>
nnoremap <silent> <F2> :call LanguageClient_textDocument_rename()<CR>


" let base16colorspace=256  " Access colors present in 256 colorspace
colorscheme base16-tomorrow-night
