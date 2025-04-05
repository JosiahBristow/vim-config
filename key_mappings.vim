" Reload current configuration file
noremap <C-r> :source %<CR>

" Open file search
noremap <C-p> :Files<CR>

" Global search
noremap <C-g> :Ag<CR>

" Toggle Tagbar
noremap <C-u> :TagbarToggle<CR>

" Search functions
nnoremap <Leader>fu :FzfFunky<Cr>

" Toggle file tree
noremap <leader>t :NERDTreeToggle<CR>

" Find current file in file tree
noremap <leader>f :NERDTreeFind<CR>

" Open a terminal
nnoremap <Leader>tt :Ttoggle<CR>

" Clear terminal context
nnoremap <Leader>tc :Tclear<CR>

" Kill terminals
nnoremap <Leader>tk :Tkill<CR>

" Switch to normal mode in terminal
tnoremap <Esc> <C-\><C-n>

" Quick navigation
noremap ss <Plug>(easymotion-s2)

" Switch to next tab
noremap <leader>tn :tabn<CR>

" Switch to previous tab
noremap <leader>tp :tabp<CR>

" Close current tab
noremap <leader>c :tabclose<CR>

" Move to left window
noremap <C-h> <C-w>h

" Move to window below
noremap <C-j> <C-w>j

" Move to window above
noremap <C-k> <C-w>k

" Move to right window
noremap <C-l> <C-w>l

" Decrease window width
noremap <C-Left> <C-w><

" Increase window height
noremap <C-Down> <C-w>+

" Decrease window height
noremap <C-Up> <C-w>-

" Increase window width
noremap <C-Right> <C-w>>

" Press jk to turn to normal mode
inoremap jk <Esc>

" Tab Completion Configuration
inoremap <silent><expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <silent><expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"

" Enter Key for Completion Confirmation
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm() : "\<CR>"
"inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
"                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

" Enable Github Coplit
noremap <C-c> :Copilot enable<CR>
" Disable Github Coplit
noremap <C-x> :Copilot disable<CR>

" Start server
nmap <leader>lp :Bracey<CR>
" Stop server
nmap <leader>lq :BraceyStop<CR>

" Copilot key mappings
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
imap <C-K> <Plug>(copilot-previous)
imap <C-L> <Plug>(copilot-next)

" Quick tag closing
inoremap <expr> > getline('.')[col('.')-2] == '<' ? "><Left>" : ">"

" Color picker
nmap <leader>cp :VCoolor<CR>
