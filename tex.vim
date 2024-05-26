set noautoindent
filetype indent off

let g:vimtex_view_general_viewer = 'okular'
let g:vimtex_view_general_options = 'file:@pdf\#src:@line@tex'
"let g:vimtex_view_general_options = '--unique file:@pdf\#src:@line@tex'

map  <leader>beq i\begin{equation}<Esc>o\end{equation}<Esc>-o  <Esc>$a
imap <leader>beq  \begin{equation}<Esc>o\end{equation}<Esc>-o  <Esc>$a
map  <leader>bal i\begin{align}<Esc>o\end{align}<Esc>-o  <Esc>$a
imap <leader>bal  \begin{align}<Esc>o\end{align}<Esc>-o  <Esc>$a
map  <leader>ss i\subsection{}<Esc>i
imap <leader>ss  \subsection{}<Esc>i
imap <leader>vs \vspace{1em}<Esc>o<Esc>
imap <leader>bpm \begin{pmatrix}\end{pmatrix}<Esc>3b<backspace>i
imap <leader>rm \mathrm{}<Esc>i
imap <leader>2ol \ol{\ol{}}<Esc>hi
imap <leader>2ul \ul{\ul{}}<Esc>hi
imap <leader>l( \left(\right)<Esc>bhi
imap <leader>l[ \left[\right]<Esc>bhi
imap <leader>l{ \left\{\right\}<Esc>2bhi
map  <leader>bit i\begin{itemize}<Esc>o\end{itemize}<Esc>-o  <Esc>$a
imap <leader>bit  \begin{itemize}<Esc>o\end{itemize}<Esc>-o  <Esc>$a
map  <leader>bfg i\begin{figure}[htb!]<Esc>o  \centering<Esc>
     \o  \includegraphics[width=\textwidth]{}<Esc>o\end{figure}<Esc>-$a
imap <leader>bfg  \begin{figure}[htb!]<Esc>o  \centering<Esc>
     \o  \includegraphics[width=\textwidth]{}<Esc>o\end{figure}<Esc>-$a
imap <leader>rm \mathrm{}<Esc>i

" Suppress hbox underfull and overfull warnings
let g:vimtex_quickfix_ignore_filters = [
  \ 'Underfull',
  \ 'Overfull',
  \]
