" load separated .vimrc in ~/.vim/config
set runtimepath+=~/.vim/
runtime! autoload/*.vim
runtime! ftplugin/*.vim

" Note: Skip initialization for vim-tiny or vim-small.
  if 0 | endif
  if &compatible
    set nocompatible "Be iMproved
  endif
" Required:
  set runtimepath+=~/.vim/bundle/neobundle.vim/

" Required:
  call neobundle#begin(expand('~/.vim/bundle/'))

" Let NeoBundle manage NeoBundle
" Required:
  NeoBundleFetch 'Shougo/neobundle.vim'

" https://qiita.com/reireias/items/5364dcaada1a5b88a206
  NeoBundle 'tpope/vim-fugitive'
  NeoBundle 'tpope/vim-surround'
  NeoBundle 'w0rp/ale'
  NeoBundle 'airblade/vim-gitgutter'
  NeoBundle 'vim-airline/vim-airline'
  NeoBundle 'vim-airline/vim-airline-themes'
" VimAirline Theme Settings
  let g:airlne_theme='cobalt2'

" neobundle.vim を使用しているなら
  NeoBundle "thinca/vim-quickrun"
  NeoBundle "Shougo/vimproc"
  NeoBundle "Shougo/unite.vim"
  NeoBundle "osyo-manga/unite-quickfix"
  NeoBundle "osyo-manga/shabadou.vim"
  NeoBundle "Shougo/vimfiler.vim"
  NeoBundle 'Shougo/neocomplete.vim'
  :command Vf VimFiler
" https://github.com/Shougo/vimfiler.vim/issues/364
  if neobundle#tap('~/vim/plugin/vimfiler.vim')
    let neobundle#hooks.on_source = '~/vim/plugin/vimfiler.vim'
    call neobundle#untap()
  endif

" latex plugin
  NeoBundle 'lervag/vimtex'
  let g:vimtex_view_general_viewer = 'firefox.exe'
  let g:tex_flavor = 'latex'
  let g:vimtex_syntax_enabled = 1
" https://qiita.com/reireias/items/beaa3bb0e299ae934217
  NeoBundle 'dhruvasagar/vim-table-mode'
  NeoBundle 'mattn/sonictemplate-vim'
"  NeoBundle 'kana/vim-operator-replace'
"  NeoBundle 'Lokaltog/vim-easymotion'
"  nmap s <Plug>(easymotion-s2)
" https://github.com/cohama/lexima.vim 
  NeoBundle 'cohama/lexima.vim'
  NeoBundle 'rhysd/clever-f.vim'
" My Bundles here:
" Refer to |:NeoBundle-examples|.
" Note: You don't set neobundle setting in .gvimrc!

  call neobundle#end()

  " Required:
  filetype plugin indent on

" If there are uninstalled bundles found on startup,
" this will conveniently prompt you to install them.
  NeoBundleCheck

" Lunch Vimfiler
"  autocmd VimEnter * VimFiler -split -simple -winheight=10 -parent -no-quit  -no-focus
