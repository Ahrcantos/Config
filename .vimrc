"Vim-Plug
call plug#begin('~/.vim/plugged')

Plug 'francoiscabrol/ranger.vim'

"Multiple Cursors
Plug 'terryma/vim-multiple-cursors'

"TypeScript
Plug 'leafgarland/typescript-vim'

"Visual
Plug 'itchyny/lightline.vim'
Plug 'dracula/vim', { 'as': 'dracula' }

"Javascript Syntax
Plug 'jelera/vim-javascript-syntax'

"NodeJS
Plug 'moll/vim-node'

"Fzf for vim
Plug 'junegunn/fzf'
Plug 'junegunn/fzf.vim'

"Plug 'ycm-core/YouCompleteMe'


call plug#end()

"Vim Color Theme
let g:dracula_colorterm = 0
syntax on
color dracula

"Relative Line Numbers
set number relativenumber

"LightLine
set laststatus=2

"Tab size
filetype plugin indent on
set tabstop=2
set shiftwidth=2

"Set Leader to ,
let mapleader=","

"Fzf mappings
nnoremap <leader>f :Files<Enter>
nnoremap <leader>c :Commands<Enter>


" Disables automatic commenting on newline:
autocmd FileType * setlocal formatoptions-=c formatoptions-=r formatoptions-=o"

" Replace all is aliased to S.
nnoremap S :%s//g<Left><Left>

"Leader Jumping"
inoremap <leader><leader> <Esc>/<++><Enter>"_c4l
vnoremap <leader><leader> <Esc>/<++><Enter>"_c4l
map <leader><leader> <Esc>/<++><Enter>"_c4l

"Folding
set foldmethod=manual
augroup remember_folds
	autocmd!
	autocmd BufWinLeave * mkview
	autocmd BufWinEnter * silent! loadview
augroup END

"Tab Controls
map <leader>th :tabfirst<Enter>
map <leader>tl :tablast<Enter>
map <leader>tj :tabprevious<Enter>
map <leader>tk :tabnext<Enter>
map <leader>tn :RangerNewTab<Enter>


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

"Odoo Templates
source ~/.vim/plugged/odoo-templates/odoo-templates.vim

"Emu File Type
au BufRead,BufNewFile *.emu set filetype=emu

