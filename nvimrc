" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0

" Spaces & Tabs {{{
set tabstop=2           " 4 space tab
set expandtab           " use spaces for tabs
set softtabstop=2       " 4 space tab
set shiftwidth=2
set modelines=1
filetype indent on
filetype plugin on
set autoindent
" }}}

" General {{{
	set mouse=a											" Enable use of the mouse for all modes
	set encoding=utf-8							" Set utf8 as standard encoding and en_US as the standard language
	set history=1000								" Sets how many lines of history NEOVIM has to remember
	set hidden
	set showcmd											" Show partial commands in the last line of the screen
	let mapleader=","

"}}}

" Mapping {{{
	inoremap jk <esc>           " jk is escape 
  nnoremap <leader>w :NERDTree<CR>

" }}}

" User interfaces {{{
	set number
	set showmatch


"}}}

" Colors and fonts {{{
	syntax enable										" Enable syntax highlighting
"	let g:solarized_termcolors=256
"	colorscheme codeschool
"	set background=dark
"	let base16colorspace=0
	let g:airline#extensions#tabline#enabled = 1
	let g:airline#extensions#tabline#left_sep = ' '
  let g:airline#extensions#tabline#left_alt_sep = '|'
  set laststatus=2
	let g:airline_powerline_fonts = 1
	set guifont=Meslo\ LG\ S\ Regular\ for\ Powerline:h20
	let g:airline_theme='papercolor'
" }}}


" Plugins {{{
  if empty(glob('~/.nvim/autoload/plug.vim'))
    silent !curl -fLo ~/.nvim/autoload/plug.vim --create-dirs
      \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
    autocmd VimEnter * PlugInstall
  endif
  call plug#begin('~/.nvim/plugged')
  source ~/.nvim/plugins.vim
  call plug#end()
"}}}
