" Turn these on in case you're using vim instead of neovim
filetype plugin on

syntax on

set hlsearch
hi Search ctermbg=LightYellow ctermfg=Black
hi Visual ctermbg=LightYellow ctermfg=Black

" Jump to the last cursor position when reopening a file
" https://stackoverflow.com/questions/774560/in-vim-how-do-i-get-a-file-to-open-at-the-same-line-number-i-closed-it-at-last9
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Trim all trailing whitespace
" https://stackoverflow.com/questions/3474709/delete-all-spaces-and-tabs-at-the-end-of-my-lines
autocmd BufWritePre * %s/\s\+$//e

" Remove search highlighting with <ESC>
" https://gist.github.com/subfuzion/7d00a6c919eeffaf6d3dbf9a4eb11d64
" Use <F4> instead of <ESC> because vim doesn't like mapping <ESC>
" https://www.reddit.com/r/vim/comments/48s8ei/if_i_open_a_file_in_vim_and_press_j_to_move_down/
nnoremap <silent> <F4> :nohlsearch<CR><C-L>

set cc=80
hi ColorColumn ctermbg=LightYellow ctermfg=Black
set ignorecase " ignore case when searching a file (/HeLLo <==> /hello)
set mouse=v " allow pasting by clicking middle mouse button
set mouse=a " allow navigation by clicking left mouse button
set shiftwidth=4 " width for tabs
set expandtab " convert tabs to whitespace

set background=light " keep proper syntax coloring in tmux

" Disable CapsLock. Breaks some git commands so don't use it
"au VimEnter * silent !setxkbmap -option caps:escape
"au VimLeave * silent !setxkbmap -option

" Turn on sidebar for neovim
set signcolumn=yes

" Turn on sidebar for vim
" https://superuser.com/questions/558876/how-can-i-make-the-sign-column-show-u  p-all-the-time-even-if-no-signs-have-been-a
"sign define dummy
"execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
"highlight SignColumn ctermbg=LightBlue
highlight SignColumn ctermbg=DarkGrey

call plug#begin($VIM_PLUG_DIR)
Plug 'lervag/vimtex'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'
Plug 'airblade/vim-gitgutter'
call plug#end()
"autocmd BufReadPre * AirlineTheme papercolor
autocmd BufReadPre * AirlineTheme minimalist
highlight GitGutterAdd    guifg=#00000 ctermfg=Green
highlight GitGutterChange guifg=#00000 ctermfg=Yellow
highlight GitGutterDelete guifg=#00000 ctermfg=Red
map :unfold :foldopen
