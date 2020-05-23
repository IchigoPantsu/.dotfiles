"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" editor config
"""""""""""""""""""""""""""""""""""""""""""""""""""""""
" setting
" leader -> space
let mapleader = "\<Space>"
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
"set cursorline
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
nnoremap Down gj
nnoremap Up gk

nnoremap h b
nnoremap l w
nnoremap H h
nnoremap L l
nnoremap Left h
nnoremap Right l

" 画面分割(Fzf.vimに依存するためdein.tomlに移動)
"" nnoremap <C-s> <C-w>v
" nnoremap <C-v> <C-w>v<C-w>l:<C-u>Files<CR>
"" nnoremap <C-s> <C-w>s
" nnoremap <C-s> <C-w>s<C-w>j:<C-u>Files<CR>
" 画面分割移動
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l

nnoremap <C-Left> <C-w>h
nnoremap <C-Down> <C-w>j
nnoremap <C-Up> <C-w>k
nnoremap <C-Right> <C-w>l

"" Tabs
nnoremap <Tab> gt
" nnoremap <S-Tab> gT
nnoremap <silent> <S-Tab> :tabnew<CR>

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
nnoremap <silent> <Esc><Esc> :nohlsearch<CR>

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


" bash、vimの操作の見直し
" https://qiita.com/asam316/items/5ff06b3dde61123d6dda
set showmatch
set wildmenu

" Vimの生産性を高める12の方法
" https://postd.cc/how-to-boost-your-vim-productivity/
"1. LeaderをSpaceキーにする
let mapleader = "\<Space>"

"3. 範囲拡大を使う
vmap v <Plug>(expand_region_expand)
vmap <C-v> <Plug>(expand_region_shrink)

"4. テキスト検索オブジェクトを見つける
"vnoremap <silent> s //e<C-r>=&selection=='exclusive'?'+1':''<CR><CR>
"  \:<C-u>call histdel('search',-1)<Bar>let @/=histget('search',-1)<CR>gv
"omap s :normal vs<CR>

" Vimの縦移動を強化する
" https://qiita.com/uji_/items/5cc267d6a96c417a29ef
set relativenumber

" Vimの補完を他エディタやIDEのような挙動にするようにする 
" https://note.com/yasukotelin/n/na87dc604e042
" 補完表示時のEnterで改行をしない
inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"

set completeopt=menuone,noinsert
inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"

" my  
nnoremap U <C-r>
nnoremap o O
nnoremap O o
nnoremap P 0p
nnoremap p 0P

""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Shougo/dein.vim config 
" https://qiita.com/sugamondo/items/fcaf210ca86d65bcaca8
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if &compatible
  set nocompatible
endif

" Add the dein installation directory into runtimepath
" set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim

""""""
" dein.vimインストール時に指定したディレクトリをセット
let s:dein_dir = expand('~/.cache/dein')

" dein.vimの実体があるディレクトリをセット
let s:dein_repo_dir = s:dein_dir . '/repos/github.com/Shougo/dein.vim'

" dein.vimが存在していない場合はgithubからclone
if &runtimepath !~# '/dein.vim'
  if !isdirectory(s:dein_repo_dir)
    execute '!git clone https://github.com/Shougo/dein.vim' s:dein_repo_dir
  endif
  execute 'set runtimepath^=' . fnamemodify(s:dein_repo_dir, ':p')
endif
""""""

if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')

  call dein#add('~/.cache/dein/repos/github.com/Shougo/dein.vim')
  call dein#add('Shougo/deoplete.nvim')
  if !has('nvim')
    call dein#add('roxma/nvim-yarp')
    call dein#add('roxma/vim-hug-neovim-rpc')
  endif

""""""
  call dein#load_toml('~/.config/nvim/dein/dein.toml', {'lazy': 0})
  call dein#load_toml('~/.config/nvim/dein/dein_lazy.toml', {'lazy': 1})
""""""
  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
syntax enable

" If you want to install not installed plugins on startup.
if dein#check_install()
  call dein#install()
endif
