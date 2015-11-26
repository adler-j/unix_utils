syntax on
set clipboard=unnamed
set number
set tabstop=4 shiftwidth=4 expandtab

set nocompatible
filetype off

set rtp+=~/.vim/bundle/Vundle.vim/
call vundle#begin()

Bundle 'gmarik/vundle'
Bundle 'Valloric/YouCompleteMe'

call vundle#end()

filetype plugin indent on 

" tagbar
set runtimepath^=~/.vim/bundle/tagbar
nmap <F8> :TagbarToggle<CR>

" nerdtree
set runtimepath^=~/.vim/bundle/nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
map <F7> :NERDTreeToggle<CR>
autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

" ctrlp
set runtimepath^=~/.vim/bundle/ctrlp.vim
let g:ctrlp_show_hidden = 1

" YCM
let g:ycm_server_keep_logfiles = 1
let g:ycm_server_log_level = 'debug'
let g:ycm_global_ycm_extra_conf = "~/.ycm_extra_conf.py"
let g:ycm_confirm_extra_conf = 0

" Remap moving between windows
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Clang format
set runtimepath^=~/.vim/bundle/vim-clang-format
let g:clang_format#detect_style_file = 1
let g:clang_format#command = "clang-format-3.6"
let g:clang_format#auto_format = 1

" map to <Leader>cf in C++ code
autocmd FileType c,cpp,objc nnoremap <buffer><Leader>cf :<C-u>ClangFormat<CR>
autocmd FileType c,cpp,objc vnoremap <buffer><Leader>cf :ClangFormat<CR>
" if you install vim-operator-user
autocmd FileType c,cpp,objc map <buffer><Leader>x <Plug>(operator-clang-format)
" Toggle auto formatting:
nmap <Leader>C :ClangFormatAutoToggle<CR>

" CUDA 
au BufNewFile,BufRead *.cu,*.cuh set filetype=cpp
