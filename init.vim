" Filename: ${XDG_CONFIG_HOME}/nvim/init.vim
" Soft-linked from /mnt/shared/documents/dotFiles/init.vim

" Both `set noautoindent` and `filetype indent off` are required.
" Also, ordering is important: `filetype indent off` must be before `syntax on`
set noautoindent
filetype indent off

syntax on
filetype plugin on

"set termguicolors " turn off if using mac terminal emulator

highlight Normal    guifg=NvimLightGrey2 guibg=NvimDarkGrey2 ctermfg=LightGrey ctermbg=235
highlight Search    guifg=Black          guibg=LightYellow   ctermfg=Black     ctermbg=LightYellow
highlight CurSearch guifg=Black          guibg=Yellow        ctermfg=Black     ctermbg=Yellow

" Jump to the last cursor position when reopening a file
" https://stackoverflow.com/questions/774560/
" in-vim-how-do-i-get-a-file-to-open-at-the-same-line-number-i-closed-it-at-last9
if has("autocmd")
  au BufReadPost * if line("'\"") > 0 && line("'\"") <= line("$")
    \| exe "normal! g'\"" | endif
endif

" Trim all trailing whitespace
" https://stackoverflow.com/questions/3474709/delete-all-spaces-and-tabs-at-the-end-of-my-lines
autocmd BufWritePre * %s/\s\+$//e

" Remove search highlighting with <F4>
" https://gist.github.com/subfuzion/7d00a6c919eeffaf6d3dbf9a4eb11d64
" https://www.reddit.com/r/vim/comments/48s8ei/if_i_open_a_file_in_vim_and_press_j_to_move_down/
nnoremap <silent> <F4> :nohlsearch<CR><C-L>

set ignorecase " ignore case when searching a file (/HeLLo <==> /hello)
set mouse=v " allow pasting by clicking middle mouse button
set mouse=a " allow navigation by clicking left mouse button
set shiftwidth=4 " width for tabs
set expandtab " convert tabs to whitespace

" Turn on sidebar for neovim
"set signcolumn=yes
"highlight SignColumn guibg=DarkCyan ctermbg=DarkCyan

" Turn on sidebar for vim
" https://superuser.com/questions/558876/how-can-i-make-the-sign-column-show-u  p-all-the-time-even-if-no-signs-have-been-a
"sign define dummy
"execute 'sign place 9999 line=1 name=dummy buffer=' . bufnr('')
"highlight SignColumn ctermbg=LightBlue

"call plug#begin()
"call plug#end()
"filetype indent off " `call plug` sets `filetype indent on`

set colorcolumn=80
highlight ColorColumn guifg=Red ctermfg=Red
