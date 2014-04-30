set autoindent    " 自動でインデント
set smartindent   " 新しい行を開始したときに、新しい行のインデントを現在行と同じ量にする。
set expandtab   " tabをspaceに置換しない
set cindent       " Cプログラムファイルの自動インデントを始める

set tabstop=2     " Tabの幅
set softtabstop=0 " Tabを押した時の幅(0だとtabstopと同じ)
set shiftwidth=2  " 自動インデントの各段階に使われる空白の数

if has("autocmd")
  filetype plugin on " ファイルタイプの検索を有効にする
  filetype indent on " ファイルタイプに合わせたインデントを利用

  autocmd FileType c          setlocal sw=2 sts=2 ts=2 et
  autocmd FileType css        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType java       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType javascript setlocal sw=2 sts=2 ts=2 et
  autocmd FileType ruby       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType haml       setlocal sw=2 sts=2 ts=2 et
  autocmd FileType vim        setlocal sw=2 sts=2 ts=2 et
  autocmd FileType yacc       setlocal sw=8 sts=8 ts=8 et
  autocmd FileType go         setlocal sw=2 sts=2 ts=2 et noexpandtab
endif
