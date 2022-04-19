syntax on
set enc=utf-8

" nice looking stuff
set showbreak=↪\
set listchars=space:·,eol:¬,tab:→\ ,extends:›,precedes:‹
set list

" easy navigation
set number
set relativenumber

" default indentation
set tabstop=4
set shiftwidth=4
set softtabstop=4
set smarttab
set expandtab
set autoindent

autocmd FileType c setlocal shiftwidth=2 softtabstop=2

" bracing
inoremap {	{}<Left>
inoremap {<CR>  {<CR>}<Esc>O

" search done into subfolders
" provides tab-completion for all file-related tasks
set path+=**

" display all matching files when we tab complete
set wildmenu

" file browser, :edit dir
let g:netrw_banner=0
let g:netrw_browse_split=4
let g:netrw_ltc=1
let g:netrw_liststyle=3
let g:netrw_list_hide=netrw_gitignore#Hide()
let g:netrw_list_hide.=',\(^\|\s\s\)\zs\.\S\+'

" status bar modifications
set statusline=%<%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
set laststatus=2
hi StatusLine term=bold ctermfg=81 guifg=Cyan
" hi StatusLine ctermbg=Blue ctermfg=Yellow

" splits
set splitbelow
set splitright

nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-H> <C-W><C-H>
nnoremap <C-L> <C-W><C-L>

set previewpopup=height:10,width:60

" copy current file name
map <C-C> :let @" = expand("%:p")<CR>
