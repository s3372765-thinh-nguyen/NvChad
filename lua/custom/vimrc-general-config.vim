set number
set relativenumber

syntax on

filetype plugin indent on
set tabstop=4
set smartindent
set shiftwidth=4

set wrap

set incsearch
set ignorecase
set smartcase

set autowriteall

set splitbelow
set splitright

set hlsearch
set clipboard=unnamed " allow using p/P to paste text from external program (e.g. Chrome)

set nrformats+=alpha 

" persist vim sessions on exit
" fu! SaveSess()
"     execute 'mksession! ~/session-default.vim'
" endfunction
"
" fu! RestoreSess()
"     execute 'so ~/session-default.vim'
"     if bufexists(1)
"         for l in range(1, bufnr('$'))
"             if bufwinnr(l) == -1
"                 exec 'sbuffer ' . l
"             endif
"         endfor
"     endif
" endfunction
"
" autocmd VimLeave * call SaveSess()
" autocmd VimEnter * nested call RestoreSess()
