"Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'francoiscabrol/ranger.vim'
Plug 'ervandew/supertab'

"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"NerdTree
Plug 'scrooloose/nerdtree'

"Visual
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

"Javascript Syntax
Plug 'jelera/vim-javascript-syntax'

"NodeJS
Plug 'moll/vim-node'


call plug#end()

"Vim Color Theme
let g:dracula_colorterm = 0
syntax on
color dracula

"Relative Line Numbers
set number relativenumber

"LightLine
set laststatus=2


"Set Leader to ,
let mapleader=","

" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o"

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>"

"Leader Jumping"
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

"Tab Controls
map <leader>th :tabfirst<Enter>
map <leader>tl :tablast<Enter>
map <leader>tj :tabprevious<Enter>
map <leader>tk :tabnext<Enter>
map <leader>tn :RangerNewTab<Enter>


"NerdTree
map <C-o> :NERDTreeToggle<Cr>


"Auto Brackets
inoremap " ""<left>
inoremap ' ''<left>
inoremap ( ()<left>
inoremap [ []<left>
inoremap { {}<left>
inoremap {<CR> {<CR>}<ESC>O
inoremap {;<CR> {<CR>};<ESC>O

"Spell Checker"
map <F6> :setlocal spell! spelllang=de_de<CR>
