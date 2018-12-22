" Install ctags global
" install plugins gen-tags gtags gtags-cscope taglist tags(may not)
" vim-tmux
" https://github.com/amix/vimrc




" gtags-cscope
set csprg=gtags-cscope

" Enable mouse
set mouse=a

" Nerdtree
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTree") && b:NERDTree.isTabTree()) | q | endif

map <leader>nn :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>
let g:NERDTreeWinPos = "left"

" TODO list
map <leader>ct :cd ~/Desktop/Todoist/todoist<cr>
map <leader>cw :cd ~/Desktop/Wedoist/wedoist<cr>

" Bufexplorer
map <leader>o :BufExplorer<cr>

" MRU
map <leader>f :MRU<CR>

" goyo.vim and vim-zenroom2
map <leader>z :Goyo<cr>

" SPC = /
" C-SPC = ?(backward search) 
map <space> /
map <c-space> ?
map <silent> <leader><cr> :noh<cr>

" Move around windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" Manage tabs
map <leader>tn :tabnew<cr>
map <leader>to :tabonly<cr>
map <leader>tc :tabclose<cr>
map <leader>tm :tabmove 

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <c-r>=expand("%:p:h")<cr>/


" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Open ack.vim for fast search:
map <leader>g :Ack 

" C-r to search and replace
vnoremap <silent> <leader>r :call VisualSelection('replace')<CR>

" Surround the visual selection in parenthesis/brackets/etc.:
vnoremap $1 <esc>`>a)<esc>`<i(<esc>
vnoremap $2 <esc>`>a]<esc>`<i[<esc>
vnoremap $3 <esc>`>a}<esc>`<i{<esc>
vnoremap $$ <esc>`>a"<esc>`<i"<esc>
vnoremap $q <esc>`>a'<esc>`<i'<esc>
vnoremap $e <esc>`>a"<esc>`<i"<esc>

" Quickly insert parenthesis/brackets/etc.:
inoremap $1 ()<esc>i
inoremap $2 []<esc>i
inoremap $3 {}<esc>i
inoremap $4 {<esc>o}<esc>O
inoremap $q ''<esc>i
inoremap $e ""<esc>i
inoremap $t <><esc>i

" Pressing <leader>ss will toggle spell checking:
map <leader>ss :setlocal spell!<cr>

" Cope mapping
map <leader>cc :botright cope<cr>
map <leader>co ggVGy:tabnew<cr>:set syntax=qf<cr>pgg
map <leader>n :cn<cr>
map <leader>p :cp<cr>


" Taglist
nnoremap <silent> <F8> :TlistToggle<CR>
nnoremap <silent> <F9> :NERDTreeToggle<CR>
