call plug#begin()

Plug 'rust-lang/rust.vim'
Plug 'preservim/nerdtree'
Plug 'vim-airline/vim-airline'
Plug 'embark-theme/vim', { 'as': 'embark', 'branch': 'main' }
Plug 'lervag/vimtex'

call plug#end()

colorscheme embark
set rnu

let g:vimtex_compiler_latexmk = {
    \ 'options' : [
    \    '-shell-escape',
    \    '-verbose',
    \    '-file-line-error',
    \    '-synctex=1',
    \    '-interaction=nonstopmode',
    \ ],
    \}

