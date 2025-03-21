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
inoremap <silent><expr> <cr> pumvisible() ? coc#_select_confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"
