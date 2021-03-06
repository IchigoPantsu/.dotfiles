
" setting
"文字コードをUFT-8に設定
set fenc=utf-8
" バックアップファイルを作らない
set nobackup
" スワップファイルを作らない
set noswapfile
" 編集中のファイルが変更されたら自動で読み直す
set autoread
" バッファが編集中でもその他のファイルを開けるように
set hidden
" 入力中のコマンドをステータスに表示する
set showcmd
" ノーマルモード時だけ ; と : を入れ替える
nnoremap ; :
nnoremap : ;
" filetype plugin enable
filetype plugin on

" 見た目系
" 行番号を表示
set number
" 現在の行を強調表示
set cursorline
" 行末の1文字先までカーソルを移動できるように
set virtualedit=onemore
" インデントはスマートインデント
" set smartindent
" ビープ音を可視化
set visualbell
" 括弧入力時の対応する括弧を表示
set showmatch
" ステータスラインを常に表示
set laststatus=2
" コマンドラインの補完
set wildmode=list:longest
" 折り返し時に表示行単位での移動できるようにする
" オレオレ移動めんどくっさぁコマンド
nnoremap j }
nnoremap k {
nnoremap J gj
nnoremap K gk

nnoremap h b
nnoremap l w
nnoremap H h
nnoremap L l

"aで行末にインサート
"nnoremap a A
"nnoremap A a

" シンタックスハイライトの有効化
syntax enable


" Tab系
" 不可視文字を可視化(タブが「▸-」と表示される)
set list listchars=tab:\▸\-
" Tab文字を半角スペースにする
set expandtab
" 行頭以外のTab文字の表示幅（スペースいくつ分）
set tabstop=2
" 行頭でのTab文字の表示幅
set shiftwidth=2


" 検索系
" 検索文字列が小文字の場合は大文字小文字を区別なく検索する
set ignorecase
" 検索文字列に大文字が含まれている場合は区別して検索する
set smartcase
" 検索文字列入力時に順次対象文字列にヒットさせる
set incsearch
" 検索時に最後まで行ったら最初に戻る
set wrapscan
" 検索語をハイライト表示
set hlsearch
" ESC連打でハイライト解除
nmap <Esc><Esc> :nohlsearch<CR>

" Shift押したくない 
"nnoremap [ {
"nnoremap ] }

" モードごとにカーソルで強調表示
if has('vim_starting')
  " 挿入モード時に非点滅の縦棒タイプのカーソル
  let &t_SI .= "\e[6 q"
  " ノーマルモード時に非点滅のブロックタイプのカーソル
  let &t_EI .= "\e[2 q"
  " 置換モード時に非点滅の下線タイプのカーソル
  let &t_SR .= "\e[4 q"
endif

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

"" load separated .vimrc in ~/.vim/config
"set runtimepath+=~/.vim/
"runtime! autoload/*.vim
"runtime! ftplugin/*.vim

"" Note: Skip initialization for vim-tiny or vim-small.
"  if 0 | endif
"  if &compatible
"    set nocompatible "Be iMproved
"  endif
"" Required:
"  set runtimepath+=~/.vim/bundle/neobundle.vim/

"" Required:
"  call neobundle#begin(expand('~/.vim/bundle/'))

"" Let NeoBundle manage NeoBundle
"" Required:
"  NeoBundleFetch 'Shougo/neobundle.vim'

"" https://qiita.com/reireias/items/5364dcaada1a5b88a206
"  NeoBundle 'tpope/vim-fugitive'
"  NeoBundle 'tpope/vim-surround'
"  NeoBundle 'w0rp/ale'
"  NeoBundle 'airblade/vim-gitgutter'
"  NeoBundle 'vim-airline/vim-airline'
"  NeoBundle 'vim-airline/vim-airline-themes'
"" VimAirline Theme Settings
"  let g:airlne_theme='cobalt2'
let g:quickrun_config = get(g:, 'quickrun_config', {})
let g:quickrun_config._ = {
      \ 'runner'    : 'vimproc',
      \ 'runner/vimproc/updatetime' : 60,
      \ 'outputter' : 'error',
      \ 'outputter/error/success' : 'buffer',
      \ 'outputter/error/error'   : 'quickfix',
      \ 'outputter/buffer/split'  : ':rightbelow 8sp',
      \ 'outputter/buffer/close_on_empty' : 1,
      \ }

"" neobundle.vim を使用しているなら
"  NeoBundle "thinca/vim-quickrun"
"  NeoBundle "Shougo/vimproc"
"  NeoBundle "Shougo/unite.vim"
"  NeoBundle "osyo-manga/unite-quickfix"
"  NeoBundle "osyo-manga/shabadou.vim"
"  NeoBundle "Shougo/vimfiler.vim"
"  NeoBundle 'Shougo/neocomplete.vim'
"  :command Vf VimFiler
"" https://github.com/Shougo/vimfiler.vim/issues/364
"  if neobundle#tap('~/vim/plugin/vimfiler.vim')
"    let neobundle#hooks.on_source = '~/vim/plugin/vimfiler.vim'
"    call neobundle#untap()
"  endif

" latex plugin
"  NeoBundle 'lervag/vimtex'
"  let g:vimtex_view_general_viewer = 'firefox.exe'
"  let g:tex_flavor = 'latex'
"  let g:vimtex_syntax_enabled = 1
"" https://qiita.com/reireias/items/beaa3bb0e299ae934217
"  NeoBundle 'dhruvasagar/vim-table-mode'
"  NeoBundle 'mattn/sonictemplate-vim'
""  NeoBundle 'kana/vim-operator-replace'
""  NeoBundle 'Lokaltog/vim-easymotion'
""  nmap s <Plug>(easymotion-s2)
"" https://github.com/cohama/lexima.vim 
"  NeoBundle 'cohama/lexima.vim'
"  NeoBundle 'rhysd/clever-f.vim'
"" My Bundles here:
"" Refer to |:NeoBundle-examples|.
"" Note: You don't set neobundle setting in .gvimrc!

"  call neobundle#end()

"" Required:
"  filetype plugin indent on

"" If there are uninstalled bundles found on startup,
"" this will conveniently prompt you to install them.
"  NeoBundleCheck

"" Lunch Vimfiler
""  autocmd VimEnter * VimFiler -split -simple -winheight=10 -parent -no-quit  -no-focus
