" vim: fdm=marker ts=2 sts=2 sw=2 fdl=0

" Sections:
"		-> General
"		-> User intefaces
"		-> Colors and fonts
"		-> Plugins

filetype plugin indent on


" General {{{
	set mouse=a											" Enable use of the mouse for all modes
	set encoding=utf-8							" Set utf8 as standard encoding and en_US as the standard language
	set history=1000								" Sets how many lines of history NEOVIM has to remember
	set hidden
	set showcmd											" Show partial commands in the last line of the screen

"}}}


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
