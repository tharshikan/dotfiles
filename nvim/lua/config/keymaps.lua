-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.cmd([[
" ------------------------- DVORAK SETTINGS-------------------------
" Quit insert mode
inoremap hh <Esc>

" wORD left/right
noremap d b|vnoremap d B|onoremap d |
noremap n w|vnoremap n w|onoremap n w|

" Up/down
noremap t k|xnoremap t k|onoremap t k|
noremap h j|xnoremap h j|onoremap h j|
"map h j

" Move half page faster
"nnoremap H  <C-d>
"nnoremap T  <C-u>,
nnoremap H  25j
nnoremap T  25k,
"nnoremap H :action MoveLineDown<CR>
"nnoremap T :action MoveLineUp<CR>

nnoremap <Down> 15j
nnoremap <Up> 15k

nnoremap D  4b
nnoremap N  4w

" cut
noremap e d
noremap E D|xnoremap E D|
"noremap ee dd|

" replace
" noremap r c
noremap = c
noremap + C|xnoremap > C|

"noremap ee dd|
"yank
"noremap , y
"noremap < Y

" inSert/Replace/append (T)
noremap l i
noremap L I

"under
noremap r o
noremap R O

"to
"noremap z t
"noremap Z T

"delete using j when in visual mode
vnoremap j d
vnoremap k c

"Join and keep it centered
noremap j mzJ'z

"replace single char
"noremap c r

"undo
" Redo
nnoremap U <C-r>

"find and keep it centered
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



"make Y behave just like C or D
nnoremap Y y$

nnoremap ep dip
nnoremap =p cip
nnoremap yp yip
nnoremap sp vip

"delete/change in word
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

"delete/change in () {} [] ''
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

"delete/change around () {} []
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
]])
