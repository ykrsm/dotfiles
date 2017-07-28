""""""""""""""""""""""""""""""""""""
"""""""        VimPlug        """""""
"""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes


"""""""      Autocomplete     """""""

Plug 'Valloric/YouCompleteMe', { 'do': './install.py' }
Plug 'marijnh/tern_for_vim'



"""""""   Syntax Highlight    """""""

" Linting
Plug 'scrooloose/syntastic'
" Javascript
" Plug 'pangloss/vim-javascript'
Plug 'othree/yajs.vim'
" React
Plug 'mxw/vim-jsx'
" riot.js
Plug 'ryym/vim-riot'


""""""         Git           """""""

Plug 'tpope/vim-fugitive'



"""""""       Airline         """""""

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'



"""""""    General Plugins    """""""

" Put closing (:{[
Plug 'Raimondi/delimitMate'

" NERDTree
Plug 'scrooloose/nerdtree'

" Ctrl P
Plug 'kien/ctrlp.vim'



"""""""     Color Themes    """""""

" Color Theme
" Plug 'morhetz/gruvbox'
Plug 'NLKNguyen/papercolor-theme'
Plug 'tyrannicaltoucan/vim-quantum'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'w0ng/vim-hybrid'



" Initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""""""
"""""""    'mxw/vim-jsx'      """""""
"""""""""""""""""""""""""""""""""""""
" Ebable JSX syntac highlighting and indenting to .js files
" let g:jsx_ext_required = 0


"""""""""""""""""""""""""""""""""""""
"""""""     'Syntastic'       """""""
"""""""""""""""""""""""""""""""""""""
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_javascript_checkers = ['eslint']

""""""""""""""""""""""""""""""""""""
"""""""       'NERDTree'      """""""
"""""""""""""""""""""""""""""""""""""

" Toggle NERDTree with ctrl n
map <C-n> :NERDTreeToggle<CR>




"""""""""""""""""""""""""""""""""""""
"""""""      Color Theme      """""""
"""""""""""""""""""""""""""""""""""""

" Color Theme
set t_Co=256

set background=light
" set background=dark

colorscheme PaperColor
" colorscheme gruvbox
" colorscheme quantum
" colorscheme hybrid_material
" colorscheme hybrid


" Airline theme
let g:airline_theme='papercolor'
" let g:airline_theme='minimalist'
" Airline using power line font
let g:airline_powerline_fonts = 1


" enable color support
" set termguicolors



"""""""""""""""""""""""""""""""""""""
"""""""    'YouCompleteMe'    """""""
"""""""""""""""""""""""""""""""""""""
" Change popup menu color for non selected items
highlight Pmenu ctermfg=lightgrey ctermbg=black " guifg=lightgray guibg=black
" Change popup menu color for selected item
highlight PmenuSel ctermfg=white ctermbg=gray " guifg=#ffffff guibg=#000000

" Disable preview window when selecting candiate
set completeopt-=preview


"""""""""""""""""""""""""""""""""""""
"""""""     Key Binding       """""""
"""""""""""""""""""""""""""""""""""""

" jj to excape
imap jj <Esc>


"""""""""""""""""""""""""""""""""""""
"""""""        Tab size       """""""
"""""""""""""""""""""""""""""""""""""

autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype python setlocal ts=2 sts=2 sw=2

autocmd Filetype java setlocal ts=4 sts=4 sw=4
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype css setlocal ts=4 sts=4 sw=4

" Convert tabs to spaces

"""""""""""""""""""""""""""""""""""""
"""""""        General        """""""
"""""""""""""""""""""""""""""""""""""

" set the command line height 
set cmdheight=1

" show line number
set number

" Show command cadidates
set wildmenu

" No beep No flash
set noeb vb t_vb=

" spell check on commit message z= to show candidates
autocmd FileType gitcommit setlocal spell

