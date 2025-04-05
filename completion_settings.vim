" Completion options
set completeopt=preview,menu

" coc.nvim extensions
let g:coc_global_extensions = [
  \ 'coc-pyright',
  \ 'coc-clangd',
  \ 'coc-sh',
  \ 'coc-rust-analyzer',
  \ 'coc-lua',
  \ 'coc-vimlsp',
  \ 'coc-html',
  \ 'coc-css',
  \ 'coc-tsserver',
  \ 'coc-emmet',
  \ 'coc-json',
  \ 'coc-toml',
  \ ]

" Smart bracket and quote completion
inoremap <expr> ' GetPair("'")
inoremap <expr> " GetPair('"')
inoremap <expr> ( GetPair('(')
inoremap <expr> [ GetPair('[')
inoremap <expr> { GetPair('{')

" Function to handle smart pairing
function! GetPair(char)
  let line = getline('.')
  let col = col('.')
  let next_char = line[col - 1]

  " If the next character is already the closing pair, just move the cursor
  if a:char == "'" && next_char == "'"
    return "\<Right>"
  elseif a:char == '"' && next_char == '"'
    return "\<Right>"
  elseif a:char == ')' && next_char == ')'
    return "\<Right>"
  elseif a:char == ']' && next_char == ']'
    return "\<Right>"
  elseif a:char == '}' && next_char == '}'
    return "\<Right>"
  endif

  " If inside a pair, don't add another pair
  if a:char == "'" && col > 1 && line[col - 2] == "'"
    return "'"
  elseif a:char == '"' && col > 1 && line[col - 2] == '"'
    return '"'
  elseif a:char == ')' && col > 1 && line[col - 2] == '('
    return ")"
  elseif a:char == ']' && col > 1 && line[col - 2] == '['
    return "]"
  elseif a:char == '}' && col > 1 && line[col - 2] == '{'
    return "}"
  endif

  " Otherwise, add the pair and position the cursor inside
  if a:char == "'"
    return "''\<Left>"
  elseif a:char == '"'
    return '""\<Left>'
  elseif a:char == '('
    return "()\<Left>"
  elseif a:char == '['
    return "[]\<Left>"
  elseif a:char == '{'
    return "{}\<Left>"
  endif
endfunction

" ~/.vim/key_mappings.vim

" Copilot configure
let g:copilot_enabled = 1 " enable Copilot
let g:copilot_filetypes = {
      \ '*': v:true,
      \ }

" Copilot key mappings
imap <silent><script><expr> <C-J> copilot#Accept("\<CR>")
imap <C-K> <Plug>(copilot-previous)
imap <C-L> <Plug>(copilot-next)
