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
" visual mode
vnoremap ; :
vnoremap : ;
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
"シンタックスハイライトの有効化
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


" Vimの縦移動を強化する
" https://qiita.com/uji_/items/5cc267d6a96c417a29ef
set relativenumber


""" asyncomplete#dein.tomlへ移動
" Vimの補完を他エディタやIDEのような挙動にするようにする 
" https://note.com/yasukotelin/n/na87dc604e042
" 補完表示時のEnterで改行をしない
"inoremap <expr><CR>  pumvisible() ? "<C-y>" : "<CR>"
"set completeopt=menuone,noinsert
"set completeopt=menuone,preview
"inoremap <expr><C-n> pumvisible() ? "<Down>" : "<C-n>"
"inoremap <expr><C-p> pumvisible() ? "<Up>" : "<C-p>"
"オレオレセッティング
"inoremap <expr><esc> pumvisible() ? "<CR>" : "<esc>"
"inoremap <expr><CR>  !pumvisible() ? "<CR>" 
"                         \: cond() ? "<C-n>""<C-y>"
"                         \:"<C-y>"     


"個人的に便利だと思うVimの基本設定のランキングを発表します！
" https://itchyny.hatenablog.com/entry/2014/12/25/090000
nnoremap Y y$
set display=lastline
set pumheight=10
set showmatch
set matchtime=1
nnoremap + <C-a>
nnoremap - <C-x>


" VimのQuickFix-windowを自動で開く設定
" https://senooken.jp/post/2016/05/05/
"autocmd QuickfixCmdPost make,grep,grepadd,vimgrep cwindow
autocmd QuickfixCmdPost make,grep,grepadd,vimgrep copen


" Vim に惚れるシーン（QuickFix リストを編集＆再読込する）
"https://qiita.com/noc06140728/items/8cf5f2462231914a267c
"set modifiable
set errorformat=%f\|%l\ col\ %c\|\ %m\ 


" Search for visually selected text
" https://vim.fandom.com/wiki/Search_for_visually_selected_text
vnoremap <CR> y/\V<C-R>=escape(@",'/\')<CR><CR>

""[vimでヴィジュアルモードの連続貼り付け - Qiita](https://qiita.com/hikaruna/items/83c1220eede810bee492)
"" vモードの置換連続ペースト用
"function! Put_text_without_override_register()
"  let line_len = strlen(getline('.'))
"  execute "normal! `>"
"  let col_loc = col('.')
"  execute 'normal! gv"_x'
"  if line_len == col_loc
"    execute 'normal! p'
"  else 
"    execute 'normal! P'
"  endif
"endfunction
"xnoremap <silent> p :call Put_text_without_override_register()<CR>
"ヤンクした時に自動でクリップボードにコピー(autoselectを指定するとvモードの置換連続ペーストができない)
"set clipboard=unnamed

" [[VSCode][Vim]visualモードで連続してペーストできるようにする | ひろくあさく](https://yosuke24.com/vscode-vim-continuous-paste/)
xnoremap p "_dP

" 初心者向け　Vimでクリップボード連携(コピー&ペースト)する方法
" https://qiita.com/iwaseasahi/items/a45b99a484966662adbe
set clipboard+=unnamed

"Is there a way to expand a Vim fold automatically when your put your cursor on it?
"autocmd CursorMoved,CursorMovedI * call OnCursorMove()
"function! OnCursorMove()
"    let l = line('.')
"    silent! foldopen
"    if exists('b:last_line') && l < b:last_line
"        norm! ]z
"    endif
"   let b:last_line = l
"endfunction


" my settings 

" オレオレ移動めんどくっさぁコマンド
" j,kはdein.toml/vim-anyfoldへ移動
nnoremap j gj
nnoremap k gk
nnoremap <S-j> <C-d>
nnoremap <S-k> <C-u>
nnoremap <Down> gj
nnoremap <Up> gk
nnoremap <Leader>j zj
nnoremap <Leader>k zk

nnoremap h b
nnoremap l e
nnoremap H <C-o>
nnoremap L <C-i>
nnoremap <Left> h
nnoremap <Right> l

vnoremap j gj
vnoremap k gk
vnoremap <S-j> <C-d>
vnoremap <S-k> <C-u>
vnoremap <Down> gj
vnoremap <Up> gk

vnoremap h b
vnoremap l e
vnoremap H <C-o>
vnoremap L <C-i>
vnoremap <Left> h
vnoremap <Right> l

onoremap j gj
onoremap k gk
onoremap J <C-d>
onoremap K <C-u>
onoremap <Down> gj
onoremap <Up> gk

onoremap h b
onoremap l e
onoremap H <C-o>
onoremap L <C-i>
onoremap <Left> h
onoremap <Right> l


" 画面分割(Fzf.vimに依存するためdein.tomlに移動)
"" nnoremap <C-s> <C-w>v
" nnoremap <C-v> <C-w>v<C-w>l:<C-u>Files<CR>
"" nnoremap <C-s> <C-w>s
" nnoremap <C-s> <C-w>s<C-w>j:<C-u>Files<CR>

" 画面分割移動
nnoremap wh <C-w>h
nnoremap wj <C-w>j
nnoremap wk <C-w>k
nnoremap wl <C-w>l
nnoremap w<Left> <C-w>h
nnoremap w<Down> <C-w>j
nnoremap w<Up> <C-w>k
nnoremap w<Right> <C-w>l

"オレオレコード
"nnoremap <C-Left> <C-w><S-r>
"nnoremap <C-Down> <C-w>r
"nnoremap <C-Up> <C-w><S-r>
"nnoremap <C-Right> <C-w>r
"nnoremap <C-Left> <C-w><S-h><Esc>
"nnoremap <C-Down> <C-w><S-j><Esc>
"nnoremap <C-Up> <C-w><S-k><Esc>
"nnoremap <C-Right> <C-w><S-l><Esc>

"nnoremap <C-w>v <C-w>v<C-w>l:RnvimrToggle<CR>
"nnoremap <C-w>s <C-w>s<C-w>j:RnvimrToggle<CR>

"nnoremap <C-w><C-v> <C-w>v<C-w>l:RnvimrToggle<CR>
"nnoremap <C-w><C-s> <C-w>s<C-w>j:RnvimrToggle<CR>

nnoremap e. :RnvimrToggle<CR>
nnoremap w. :RnvimrToggle<CR>
nnoremap wx <C-w>s<C-w>j:RnvimrToggle<CR>
nnoremap wv <C-w>v<C-w>j:RnvimrToggle<CR>
""" Tabs
nnoremap t gt
nnoremap <S-t> gT
"nnoremap <silent> <Leader><Tab> :tabnew<CR>

"オレオレセッティング
"nnoremap <expr><CR> v:hlsearch==1 ? "n" : "<CR>"
"nnoremap <expr><CR> v:hlsearch==1 ? "n" : "*"
"nnoremap <expr><CR> v:hlsearch==1 ? "n" : "zA"
"nnoremap <expr><BS> v:hlsearch==1 ? "N" : "<BS>"
"nnoremap <expr>m v:hlsearch==1 ? "n" : "zA"

"nnoremap <CR> zA
"nnoremap <leader><CR> zR
"nnoremap <leader><BS> zM

nnoremap a i
nnoremap i a
noremap A I
nnoremap I A

vnoremap A I
vnoremap I A
"vnoremap a I
"vnoremap i A

"[NeovimのTerminalモードをちょっと使いやすくする](https://zenn.dev/ryo_kawamata/articles/improve-neovmi-terminal)
"tnoremap <Esc> <C-\><C-n>
autocmd TermOpen * startinsert
"autocmd BufEnter * startinsert
"autocmd BufEnter * if &filetype == "fzf" | startinsert | endif
"autocmd BufLeave * startinsert

"nnoremap <C-y> g;
"nnoremap <C-u> g,

" smart insert 
" 単語の先頭でaとiを入れ替える
" get string from cursor to end of <CWORD>
" https://vi.stackexchange.com/questions/22412/get-string-from-cursor-to-end-of-cword
" vim正規表現リファレンス
" https://qiita.com/kawaz/items/d0708a4ab08e572f38f3

"nnoremap <expr> len(matchstr(getline('.')[col('.')-1:],'\(\k\+\|\W\+\)'))==len(expand("<cword>")) ? "i" : "a"

function!  SmartInsert()
let leftFromCursor = len(matchstr(join(reverse(split(getline('.')[:col('.')-1],'\zs')),""),'\(\k\+\|\W\+\)'))
let rightFromCursor = len(matchstr(getline('.')[col('.')-1:],'\(\k\+\|\W\+\)')) 

return leftFromCursor<rightFromCursor
endfunction

"nnoremap <expr>a SmartInsert()==1 ? "i" : "a"
"nnoremap <expr>i SmartInsert()==1 ? "a" : "i"  


nnoremap U <C-r>
"nnoremap o O
"nnoremap O o
"nnoremap P p
"nnoremap p P
set notimeout
set clipboard+=unnamedplus

set mouse=a
map <ScrollWheelUp> <C-Y>
map <ScrollWheelDown> <C-E>

nmap <C-ScrollWheelUp> <C-o>
nmap <C-ScrollWheelDown> <C-i>


"setlocal spell
"set spelllang=en_us
"inoremap <C-l> <c-g>u<Esc>[s1z=`]a<c-g>u

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
""""""""""""""""""""""""""""""""""""

" -------------------- ColorScheme ---------------------------------
"call dein#add('ayu-theme/ayu-vim', {'merged': 0})
"call dein#source('ayu-vim')
set termguicolors     " enable true colors support
"let ayucolor="light"  " for light version of theme
"let ayucolor="mirage" " for mirage version of theme
"let ayucolor="dark"   " for dark version of theme
"colorscheme ayu
set background=dark
colorscheme oceanic_material
let g:oceanic_material_transparent_background = 1

"[Coc warning underline color disappear · Issue #19 · glepnir/oceanic-material]
"(https://github.com/glepnir/oceanic-material/issues/19)
hi NormalFloat guibg=#1b2b34

"[Folder names not clearly visible in netrw · Issue #26 · glepnir/oceanic-material]
"(https://github.com/glepnir/oceanic-material/issues/26)
hi netrwDir guifg=#FFFFFF

"[[Feature] Highlight line breaks · Issue #140 · plasticboy/vim-markdown](https://github.com/plasticboy/vim-markdown/issues/140)
hi link mkdLineBreak CursorLine

"let g:sonokai_style = 'maia'
"colorscheme sonokai
"let g:airline_theme = 'sonokai'

""[vim transparent background](https://gist.github.com/fuadnafiz98/d91e468c9bc4689868eb0984a29fef66)
"" for transparent background
"function! AdaptColorscheme()
"   highlight clear CursorLine
"   highlight Normal ctermbg=none
"   highlight LineNr ctermbg=none
"   highlight Folded ctermbg=none
"   highlight NonText ctermbg=none
"   highlight SpecialKey ctermbg=none
"   highlight VertSplit ctermbg=none
"   highlight SignColumn ctermbg=none
"endfunction
"autocmd ColorScheme * call AdaptColorscheme()
"
"highlight Normal guibg=NONE ctermbg=NONE
"highlight CursorColumn cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLine cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight CursorLineNr cterm=NONE ctermbg=NONE ctermfg=NONE
"highlight clear LineNr
"highlight clear SignColumn
"highlight clear StatusLine
"
"
"" Change Color when entering Insert Mode
"autocmd InsertEnter * set nocursorline
"
"" Revert Color to default when leaving Insert Mode
"autocmd InsertLeave * set nocursorline
"
""" extra settings, uncomment them if necessary :) 
""set cursorline
""set noshowmode
""set nocursorline
"
"" trasparent end
