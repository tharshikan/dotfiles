" --------------------Common settings -------------------------
set hlsearch
set incsearch
set ignorecase
set smartcase
set showmode
set number
set autoindent
set smartindent
" set hls
set relativenumber
set scrolloff=2
" set history=100000
" set clipboard=unnameds
" set selectmode=mouse

" automatically leave insert mode after 'updatetime' milliseconds of inaction
au CursorHoldI * stopinsert

" --------------------Common settings END -------------------------

" ------------------------- DVORAK SETTINGS-------------------------
" Quit insert mode
inoremap hh <Esc>

" wORD left/right
noremap d b
noremap n w

" Up/down
noremap t k
noremap h j

" Move half page faster
nnoremap H 25j
nnoremap T 25k

nnoremap <Down> 15j
nnoremap <Up> 15k

nnoremap D 4b
nnoremap N 4w

" cut
noremap e d
noremap E D

" replace
noremap = c
noremap + C

" inSert/Replace/append (T)
noremap l i
noremap L I

" undo
nnoremap U <C-r>

" find and keep it centered
noremap v nzzzv
noremap w Nzzzv

noremap V Nzzzv

noremap . /
noremap > ?

noremap c .
noremap C >

nnoremap s v
nnoremap S V

nnoremap oi gi

" make Y behave just like C or D
nnoremap Y y$

" delete/change in word
nnoremap es dw
nnoremap en diw
nnoremap =s cw
nnoremap =n ciw
nnoremap ean daw
nnoremap =an caw
nnoremap sn viw
nnoremap yn yiw
nnoremap san vaw
nnoremap yan yaw

" delete/change in () {} [] ''
nnoremap eh di{
nnoremap et dit
nnoremap er di(
nnoremap ed di[
nnoremap el di'

nnoremap =h ci{
nnoremap =t cit
nnoremap =r ci(
nnoremap =d ci[
nnoremap =l ci'

nnoremap yh yi{
nnoremap yt yit
nnoremap yr yi(
nnoremap yd yi[
nnoremap yl yi'

nnoremap sh vi{
nnoremap st vit
nnoremap sr vi(
nnoremap sd vi[
nnoremap sl si'

" delete/change around () {} []
nnoremap eah da{
nnoremap eat dat
nnoremap ear da(
nnoremap ead da[
nnoremap eal da'

nnoremap =ah ca{
nnoremap =at cat
nnoremap =ar ca(
nnoremap =ad ca[
nnoremap =al ca'

nnoremap yah ya{
nnoremap yat yat
nnoremap yar ya(
nnoremap yad ya[
nnoremap yal ya'

nnoremap sah va{
nnoremap sat vat
nnoremap sar va(
nnoremap sad va[
nnoremap sal va'

" Delete/Backspace
nnoremap <C-d> "_dw
vnoremap <C-d> "_d
inoremap <C-d> <Delete>
cnoremap <C-d> <Delete>

nnoremap <Delete> "_x
vnoremap <Delete> "_d

nnoremap <Backspace> a<Left><Backspace><Right><Esc>
vnoremap <Backspace> x
nnoremap <C-Backspace> a<Left><C-W><Right><Esc>
inoremap <C-Backspace> <C-w>
cnoremap <C-Backspace> <C-w>

nnoremap <C-Delete> "_dw
inoremap <C-Delete> <C-o>"_dw
cnoremap <C-Delete> <Delete>
nnoremap <S-Backspace> "_d^
inoremap <S-Backspace> <Backspace>
cnoremap <S-Backspace> <Backspace>
nnoremap <S-Delete> "_d$
inoremap <S-Delete> <Delete>
cnoremap <S-Delete> <Delete>
" ------------------------- DVORAK SETTINGS END -------------------------


" ---------------------------COMMON MAPPINGS--------------------------------
"split vertically
nnoremap is <C-W>v
"close window
nnoremap ix :hide <CR>
"go to right split window
nnoremap or <C-W>l
nnoremap ol <C-W>h

"increment
nnoremap o. <C-a>
"decrement
nnoremap o, <C-x>

" Window operation
nnoremap <Leader>ww <C-W>w
nnoremap <Leader>wd <C-W>c
nnoremap <Leader>wj <C-W>j
nnoremap <Leader>wk <C-W>k
nnoremap <Leader>wh <C-W>h
nnoremap <Leader>wl <C-W>l
nnoremap <Leader>ws <C-W>s
nnoremap <Leader>w- <C-W>s
nnoremap <Leader>wv <C-W>v
nnoremap <Leader>w\| <C-W>v
" ---------------------------COMMON MAPPINGS END ---------------------------
