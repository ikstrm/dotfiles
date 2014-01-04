" Esc
noremap <C-e> <Esc>
noremap <C-E> <Esc>
inoremap <C-e> <Esc>
inoremap <C-E> <Esc>
cnoremap <C-e> <Esc>
cnoremap <C-E> <Esc>

" スクロール
noremap <Space>j <C-f>
noremap <Space>k <C-b>

" The prefix key.
nnoremap [Tag] <Nop>
nmap <Space> [Tag]
" t1 で1番左のタブ、t2 で1番左から2番目のタブにジャンプ
for n in range(1, 9)
  execute 'nnoremap <silent> [Tag]'.n  ':<C-u>tabnext'.n.'<CR>'
endfor

" tabline
map <silent> [Tag]t :tablast <bar> tabnew <bar> Explore <bar> vs<CR>
map <silent> [Tag]e :tabclose<CR>
map <silent> [Tag]p :tabnext<CR>
map <silent> [Tag]o :tabprevious<CR>

" ウィンドウ切り替え
nnoremap [Tag]h <C-w>h
nnoremap [Tag]l <C-w>l

" Explore
nnoremap <silent> ;e :<C-u>Explore<CR>

" Buffer back
nnoremap <silent> ;b :b<Space>#<CR>

" End Vim
nnoremap <silent> ;xc :qa!<CR>

" Unite.vim
nnoremap <silent> ;u :<C-u>Unite buffer git_cached<CR>
imap ;q <C-u><C-h>

" Rails
nnoremap <silent> ;a :<C-u>A<CR>
nnoremap <silent> ;r :<C-u>R<CR>
nnoremap <silent> ;m :<C-u>Rmodel<CR>
nnoremap <silent> ;v :<C-u>Rview<CR>
nnoremap <silent> ;c :<C-u>Rcontroller<CR>
nnoremap <silent> ;t :<C-u>Rspec<CR>
nnoremap <silent> ;h :<C-u>Rhelper<CR>
nnoremap <silent> ;j :<C-u>Rjavascript<CR>
" nnoremap <silent> ;s :<C-u>Rstylesheet<CR>

" オリジナルの;の挙動を素早く呼び出す
nnoremap <silent> [Tag]; ;

" 検索解除
" nmap <Esc><Esc> :nohlsearch<CR><Esc>

" ctags
nnoremap <silent> [Tag]f <C-]>
nnoremap <silent> [Tag]u <C-o>
nnoremap <silent> [Tag]i <C-i>

" Hash Rocket
command! -bar -range=% NotRocket :<line1>,<line2>s/:\([a-z_]\+\)\s*=>/\1:/g
vnoremap <silent> gr :NotRocket<CR>

" Source .vimrc
noremap <silent> ;s :<C-u>source<Space>~/.vimrc<CR>

" Cursor in command line
cmap <C-f> <Right>
cmap <C-b> <Left>

" paste
nnoremap <Space>g :<C-u>r !pbpaste<CR>

" delete highlight
nnoremap <silent> gh :let @/=''<CR>
