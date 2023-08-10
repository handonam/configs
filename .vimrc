" tmux will send xterm-style keys when its xterm-keys option is on
if &term =~ '^screen'
    execute "set <xUp>=\e[1;*A"
    execute "set <xDown>=\e[1;*B"
    execute "set <xRight>=\e[1;*C"
    execute "set <xLeft>=\e[1;*D"
endif

execute pathogen#infect()
set cindent
set smartindent
set autoindent
set autochdir
set expandtab
set tabstop=2
set shiftwidth=2
set cinkeys=0{,0},:,0#,,!^F
set number

set nowrap
syntax on
set laststatus=2
highlight OverLength ctermbg=red ctermfg=white guibg=#592929
match OverLength /\%81v.\+/
map <C-s> :w<CR>
imap <C-s> <Esc>:w<CR>i
""set directory=~/.vim/tmp
set mouse=a
set t_CO=256

""Unindent
imap <S-tab> <C-o><<

"" make sure to install python3-pip, and install vim-nox
"" (check with vim --version | grep '+python' to ensure you have it)
set rtp+=/usr/local/lib/python3.11/site-packages/powerline/bindings/vim
python3 from powerline.vim import setup as powerline_setup
python3 powerline_setup()
python3 del powerline_setup
set backspace=indent,eol,start
