" Initialize plugin system
call plug#begin('~/.vim/plugged')

" Enhanced matching for brackets, tags, etc.
Plug 'andymass/vim-matchup'

" Surrounding text objects
Plug 'tpope/vim-surround'

" Open terminal in vim
Plug 'kassio/neoterm'

" Matchup for HTML tags
Plug 'adelarsq/vim-matchit'

" Code completion and LSP support
Plug 'neoclide/coc.nvim', {'branch': 'release'}

" Status line customization
Plug 'itchyny/lightline.vim'

" Rainbow parentheses
Plug 'frazrepo/vim-rainbow'

" File tree explorer
Plug 'preservim/nerdtree', {'on': 'NERDTreeToggle'}

" Git integration
Plug 'tpope/vim-fugitive', {'for': 'gitcommit'}

" Quick commenting
Plug 'preservim/nerdcommenter'

" TokyoNight color scheme
Plug 'ghifarit53/tokyonight-vim'

" Tagbar
Plug 'preservim/tagbar', {'on': 'TagbarToggle'}

" Indentation guides
Plug 'Yggdroot/indentLine'

" Start page
Plug 'mhinz/vim-startify'

" Quick navigation
Plug 'easymotion/vim-easymotion'

" Fuzzy finder
Plug 'junegunn/fzf', {'do': {-> fzf#install()}}

" FZF integration
Plug 'junegunn/fzf.vim'

" Function finder
Plug 'tracyone/fzf-funky',{'on': 'FzfFunky'}

"Rainbow brackets
Plug 'luochen1990/rainbow'

" Color picker
Plug 'KabbAmine/vCoolor.vim'

" Auto Pairs
Plug 'jiangmiao/auto-pairs'

" GitHub Copilot
Plug 'github/copilot.vim'

" HTML/CSS/JS Tooling
Plug 'mattn/emmet-vim'                  " Zen-coding for HTML
Plug 'othree/html5.vim'                 " HTML5 syntax support
Plug 'pangloss/vim-javascript'          " Enhanced JS syntax
Plug 'ap/vim-css-color'                 " Color previews
Plug 'AndrewRadev/tagalong.vim'         " Auto-rename paired tags

" Modern Framework Support
Plug 'posva/vim-vue'                    " Vue SFC support
Plug 'leafgarland/typescript-vim'       " TypeScript support
Plug 'styled-components/vim-styled-components' " CSS-in-JS

" Install bracey.vim (requires Node.js)
Plug 'turbio/bracey.vim', {'do': 'npm install --prefix server'}

" Prettier integration
Plug 'prettier/vim-prettier', {
  \ 'do': 'npm install',
  \ 'for': ['html', 'css', 'javascript'] }
Plug 'andymass/vim-matchup' " Tag jumping

" End plugin initialization
call plug#end()

" Copilot configure
let g:copilot_enabled = 2 " disable Copilot
let g:copilot_filetypes = {
      \ '*': v:true,
      \ }

" Trigger expansion with Tab
let g:user_emmet_leader_key='<Tab>'

" Enable only for web files
let g:user_emmet_install_global = 0
autocmd FileType html,css,jsx,tsx,vue EmmetInstall

" Auto-format on save
let g:prettier#autoformat = 1

" Tag jumping
let g:matchup_matchparen_offscreen = {'method': 'popup'}

" Rainbow parentheses
let g:rainbow_active = 1
let g:rainbow_conf = {
\   'guifgs': ['royalblue3', 'darkorange3', 'seagreen3', 'firebrick'],
\   'ctermfgs': ['lightblue', 'lightyellow', 'lightcyan', 'lightmagenta'],
\   'operators': '_,\|+\|-_',
\   'parentheses': ['start=/(/ end=/)/ fold', 'start=/\[/ end=/\]/ fold', 'start=/{/ end=/}/ fold', 'start=/`/ end=/`/ fold', 'start=/|/ end=/|/ fold'],
\   'separately': {
\       '*': {},
\       'tex': {
\           'parentheses': ['start=/(/ end=/)/', 'start=/\[/ end=/\]/'],
\       },
\       'css': 0,
\   }
\}

