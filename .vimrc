""""""""""""""""""""""""""""""""""""
"""""""        VimPlug        """""""
"""""""""""""""""""""""""""""""""""""

" Specify a directory for plugins
" - For Neovim: ~/.local/share/nvim/plugged
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')
" Make sure you use single quotes


"""""""      Autocomplete     """""""

Plug 'Valloric/YouCompleteMe', { 'do': './install.py --tern-completer --clang-completer' }
Plug 'marijnh/tern_for_vim'
" Plug 'artur-shaik/vim-javacomplete2'



"""""""   Syntax Highlight    """""""

" Linting
" Plug 'scrooloose/syntastic'
Plug 'w0rp/ale'


" Javascript
Plug 'pangloss/vim-javascript', { 'for': ['javascript', 'javascript.jsx'] }
Plug 'mxw/vim-jsx', { 'for': ['javascript', 'javascript.jsx'] }
" Plug 'othree/yajs.vim'

" React
" Plug 'maxmellon/vim-jsx-pretty'

" riot.js
" Plug 'ryym/vim-riot'
" Plug 'nicklasos/vim-jsx-riot'


""""""         Git           """""""

" Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'



"""""""       Airline         """""""

Plug 'bling/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'edkolev/tmuxline.vim'



"""""""    General Plugins    """""""

" Put closing (:{[
Plug 'Raimondi/delimitMate'

" NERDTree
Plug 'scrooloose/nerdtree'
Plug 'tiagofumo/vim-nerdtree-syntax-highlight'

" Ctrl P
Plug 'kien/ctrlp.vim'

" Icons
" Plug 'ryanoasis/vim-devicons'

"""""""     Color Themes    """""""

" Color Theme
" Plug 'morhetz/gruvbox'
" Plug 'NLKNguyen/papercolor-theme'
" Plug 'tyrannicaltoucan/vim-quantum'
" Plug 'kristijanhusak/vim-hybrid-material'
" Plug 'mkarmona/colorsbox'
" Plug 'w0ng/vim-hybrid'
Plug 't1mxg0d/vim-lucario'



" Initialize plugin system
call plug#end()


"""""""""""""""""""""""""""""""""""""
"""""""    'mxw/vim-jsx'      """""""
"""""""""""""""""""""""""""""""""""""
" Ebable JSX syntac highlighting and indenting to .js files
" let g:jsx_ext_required = 0



"""""""""""""""""""""""""""""""""""""
"""""""     'vim-airline'     """""""
"""""""""""""""""""""""""""""""""""""
" Airline theme
let g:airline_theme='papercolor'
" let g:airline_theme='minimalist'
" Airline using power line font
let g:airline_powerline_fonts = 1



"""""""""""""""""""""""""""""""""""""
"""""""        'ALE'          """""""
"""""""""""""""""""""""""""""""""""""
" Specify the linter for certain file types
let g:ale_fixers = {
\   'javascript': ['eslint'],
\}

" Show errors info in vim-airline 
let g:airline#extensions#ale#enabled = 1


"""""""""""""""""""""""""""""""""""""
"""""""     'Syntastic'       """""""
"""""""""""""""""""""""""""""""""""""
" set statusline+=%#warningmsg#
" set statusline+=%{SyntasticStatuslineFlag()}
" set statusline+=%*
" 
" let g:syntastic_always_populate_loc_list = 1
" let g:syntastic_auto_loc_list = 1
" let g:syntastic_check_on_open = 1
" let g:syntastic_check_on_wq = 0
" 
" let g:syntastic_javascript_checkers = ['eslint']
" let g:syntastic_python_checkers = ['pyflakes']
" " let g:syntastic_javascript_eslint_exe = '$(npm bin)/eslint'



""""""""""""""""""""""""""""""""""""
"""""""       'NERDTree'      """""""
"""""""""""""""""""""""""""""""""""""

" Toggle NERDTree with ctrl n
map <C-n> :NERDTreeToggle<CR>

" Show hidden files
let NERDTreeShowHidden=1



"""""""""""""""""""""""""""""""""""""
"""""""      Color Theme      """""""
"""""""""""""""""""""""""""""""""""""

" Color Theme
" set t_Co=256

set background=light
" set background=dark

" colorscheme papercolor
" colorscheme gruvbox

" Par quantum README
" set termguicolors
" colorscheme quantum

colorscheme lucario

" colorscheme hybrid_material
" colorscheme colorsbox-material

 


" enable color support
" set termguicolors



"""""""""""""""""""""""""""""""""""""
"""""""     Tweak Scheme      """""""
"""""""""""""""""""""""""""""""""""""

" To use Terminal.app's bg color
highlight Normal ctermbg=none
highlight NonText ctermbg=none
highlight Directory ctermfg=blue
highlight VertSplit ctermbg=none ctermfg=blue
highlight VertSplit ctermbg=none ctermfg=blue
highlight StatusLine ctermbg=24
highlight Search ctermfg=254 ctermbg=31 guibg=darkcyan guifg=white



"""""""""""""""""""""""""""""""""""""
"""""""    'YouCompleteMe'    """""""
"""""""""""""""""""""""""""""""""""""
" Change popup menu color for non selected items
highlight Pmenu ctermfg=lightgrey ctermbg=black " guifg=lightgray guibg=black
" Change popup menu color for selected item
highlight PmenuSel ctermfg=white ctermbg=gray " guifg=#ffffff guibg=#000000

" Disable preview window when selecting candiate
set completeopt-=preview

" Use python3 
let g:ycm_python_binary_path = '/usr/local/bin/python3'

" C family language config
let g:ycm_global_ycm_extra_conf = '~/.ycm_extra_conf.py'


"""""""""""""""""""""""""""""""""""""
"""""""    Javacomplete2      """""""
"""""""""""""""""""""""""""""""""""""
" Required
autocmd FileType java setlocal omnifunc=javacomplete#Complete


"""""""""""""""""""""""""""""""""""""
"""""""        Icons         """""""
"""""""""""""""""""""""""""""""""""""
" set encoding=utf8
" set guifont=Droid\ Sans\ Mono\ for\ Powerline\ Plus\ Nerd\ File\ Types:h11
" let g:airline_powerline_fonts = 1


"""""""""""""""""""""""""""""""""""""
"""""""     Key Binding       """""""
"""""""""""""""""""""""""""""""""""""

" jk to excape
imap jk <Esc>


"""""""""""""""""""""""""""""""""""""
"""""""        Tab size       """""""
"""""""""""""""""""""""""""""""""""""

autocmd Filetype json setlocal ts=2 sts=2 sw=2
autocmd Filetype javascript setlocal ts=2 sts=2 sw=2
autocmd Filetype riot setlocal ts=2 sts=2 sw=2
autocmd Filetype c setlocal ts=2 sts=2 sw=2
autocmd Filetype go setlocal ts=2 sts=2 sw=2
autocmd Filetype yml setlocal ts=2 sts=2 sw=2

autocmd Filetype java setlocal ts=4 sts=4 sw=4
autocmd Filetype html setlocal ts=4 sts=4 sw=4
autocmd Filetype css setlocal ts=4 sts=4 sw=4
autocmd Filetype python setlocal ts=4 sts=4 sw=4

set expandtab


"""""""""""""""""""""""""""""""""""""
"""""""     File Extention    """""""
"""""""""""""""""""""""""""""""""""""
" au BufReadPost *.tag set syntax=html
" au BufNewFile,BufRead *.tag setlocal ft=javascript



"""""""""""""""""""""""""""""""""""""
"""""""         Search        """""""
"""""""""""""""""""""""""""""""""""""

" Show vimgrep result in quickfix
autocmd QuickFixCmdPost *grep* cwindow

" Ignore case when no capitalized
" Case sensitive when capitalized
set smartcase

" Highlight seach match
set hlsearch


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

" spell check on commit message and *.md 
" [z= to show candidates]
autocmd FileType gitcommit setlocal spell
au BufRead *.md setlocal spell


" let &t_8f = "\<Esc>[38:2:%lu:%lu:%lum"
" let &t_8b = "\<Esc>[48:2:%lu:%lu:%lum"


