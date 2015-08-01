call plug#begin('~/.nvim/plugged')

Plug 'Valloric/YouCompleteMe', { 'do': './install.sh' }
Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
Plug 'scrooloose/syntastic'
Plug 'junegunn/fzf', { 'do': 'yes \| ./install' }
Plug 'tpope/vim-fugitive'

Plug 'othree/yajs', { 'for': 'javascript' }
Plug 'marijnh/tern_for_vim', { 'for': 'javascript', 'do': 'sudo npm install' }

Plug 'klen/rope-vim', { 'for': 'python' }
" simple but useful, Ctrl-f
Plug 'vim-scripts/python-imports.vim'
" python imports...
" Plug 'dbsr/vimpy', { 'for': 'python' }

" my custom plugin
" ================
Plug '/d1/public/vim-ipytrace'
" Plug 'devcon14/vim-ipytrace'

" colorschemes
" ============
Plug 'flazz/vim-colorschemes'
Plug 'Lokaltog/vim-distinguished'
Plug 'noahfrederick/vim-hemisu'
Plug 'w0ng/vim-hybrid'
Plug 'NLKNguyen/papercolor-theme'

" nice to have
" ============
Plug 'tpope/vim-surround'
Plug 'Valloric/MatchTagAlways'
" Plug 'Raimondi/delimitMate'
" matchem, improved on delimitMate
Plug 'ervandew/matchem'

" html tag closer + language
Plug 'rstacruz/sparkup'
" then I read about emmet...
" Plug 'mattn/emmet-vim'

" Plug 'bling/vim-airline'
" Plug 'junegunn/vim-easy-align'
" Plug 'hail2u/vim-css3-syntax'
" Plug 'matthewsimo/angular-vim-snippets'
" Plug 'chrisgillis/vim-bootstrap3-snippets'
Plug 'majutsushi/tagbar'
let g:rainbow_active = 0 "0 if you want to enable it later via :RainbowToggle
Plug 'luochen1990/rainbow'
Plug 'bkad/CamelCaseMotion'
Plug 'michaeljsmith/vim-indent-object'
" Plug 'plasticboy/vim-markdown'

" tryouts
" =======
" Plug 'zhaocai/GoldenView.Vim'

call plug#end()

let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_path_to_python_interpreter = '/usr/bin/python'
let g:UltiSnipsExpandTrigger="<c-j>"
let g:UltiSnipsJumpForwardTrigger="<c-j>"
" <c-k> is also used for special characters, do we care?
let g:UltiSnipsJumpBackwardTrigger="<c-k>"
let g:syntastic_python_checkers = ['flake8']
let g:syntastic_python_flake8_args='--ignore=E501'
let ropevim_vim_completion=0
" let g:ropevim_enable_autoimport=1
" let g:ropevim_autoimport_modules = ["shutil", "os"]
" :RopeGenerateAutoImportCache, :RopeAutoImport, GiveUp...
" Just use snippets and :RopeOrganiseImports instead
" nnoremap <leader>o :RopeOrganizeImports<CR>0<CR><CR>
nnoremap <leader>o :g/import/move 0<CR>
" :g/import/move /package/
nnoremap <leader>% :MtaJumpToOtherTag<cr>
" let $FZF_DEFAULT_COMMAND = 'ag -l -g ""'
function! BufList()
  redir => ls
  silent ls
  redir END
  return split(ls, '\n')
endfunction

function! BufOpen(e)
  execute 'buffer '. matchstr(a:e, '^[ 0-9]*')
endfunction

nnoremap <silent> <Leader><Enter> :call fzf#run({
\   'source':      reverse(BufList()),
\   'sink':        function('BufOpen'),
\   'options':     '+m',
\   'tmux_height': '40%'
\ })<CR>
" airline
set laststatus=2

filetype plugin on
filetype indent on
syntax on
set nocp
set bg=dark
set showbreak=\
set ignorecase
set incsearch
" http://nvie.com/posts/how-i-boosted-my-vim/ 
set backspace=indent,eol,start
set number
set history=1000         " remember more commands and search history, q: q/
set undolevels=1000      " use many muchos levels of undo
set nobackup
set noswapfile
" for consistent tabs not only in python
set tabstop=4
set shiftwidth=4
set expandtab
set softtabstop=4
" set cursorline
set rnu
imap <C-s> <CR><Esc>O
colorscheme distinguished
