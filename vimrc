execute pathogen#infect()

filetype plugin indent on
syntax on

" Color Scheme
set t_Co=256
colorscheme tomorrow-night
" colors tomorrow-night

" 2 tabs identation
set smartindent
set tabstop=2
set shiftwidth=2
set expandtab

" Show line numbers
set number
hi LineNr ctermfg=darkgrey
" highlight LineNr cterm=NONE ctermfg=DarkBlue ctermbg=NONE gui=NONE guifg=DarkBlue guibg=NONE

" Git-Gutter colors
hi SignColumn ctermbg=NONE

" air-line configuration
set noshowmode
set laststatus=2
let g:airline_powerline_fonts = 1
let g:bufferline_echo = 0

" Remove tailing space on save
fun! <SID>StripTrailingWhitespaces()
  let l = line(".")
  let c = col(".")
  %s/\s\+$//e
  call cursor(l, c)
endfun

autocmd FileType c,cpp,java,javascript,php,ruby,python autocmd BufWritePre <buffer> :call <SID>StripTrailingWhitespaces()

