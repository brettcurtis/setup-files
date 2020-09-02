set visualbell

execute pathogen#infect()

filetype plugin indent on
syntax on

let g:terraform_fmt_on_save=1
let g:terraform_align=1

set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_yaml_checkers = ['yamllint']
let g:syntastic_bash_checkers = ['sh']
let g:syntastic_markdown_checkers = ['mdl']

set background=dark
colorscheme solarized8

set nocompatible
if has("autocmd")
  filetype plugin indent on
endif

set foldmethod=indent   
set nofoldenable
