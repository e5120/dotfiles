" setting

" about character
set encoding=utf-8
scriptencoding utf-8
set fileencoding=utf-8 " 保存時の文字コード
set fileencodings=ucs-boms,utf-8,euc-jp,cp932 " 読み込み時の文字コードの自動判別. 左側が優先される
set fileformats=unix,dos,mac " 改行コードの自動判別. 左側が優先される
set ambiwidth=double " □や○文字が崩れる問題を解決

" about layout
syntax enable
set number
set cursorline
set virtualedit=onemore
set showmatch
set wildmode=list:longest
colorscheme monokai

" about operation
set backspace=indent,eol,start
set whichwrap=b,s,h,l,<,>,[,]
set scrolloff=8
set sidescrolloff=16
set sidescroll=1

" 行が折り返し表示されていた場合、行単位ではなく表示行単位でカーソルを移動する
nnoremap j gj
nnoremap k gk
nnoremap <down> gj
nnoremap <up> gk

" about search
set hlsearch
set incsearch
set ignorecase
set smartcase
set wrapscan
set gdefault

" about tab
set expandtab
set tabstop=4
set shiftwidth=4
set softtabstop=4
set autoindent
set smartindent

" about edit
set fenc=utf-8
set noswapfile
set autoread
set showcmd
set wildmenu
set history=5000
