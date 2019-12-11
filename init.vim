if empty(glob('~/nvim/bundle/vim-plug/autoload/plug.vim'))
  silent !curl -fLo ~/nvim/bundle/vim-plug/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source ~/nvim/bundle/vim-plug/autoload/plug.vim
call plug#begin('~/nvim/bundle')

Plug 'airblade/vim-gitgutter'
" Plug 'b4winckler/vim-angry'
Plug 'itchyny/lightline.vim'
" Plug 'junegunn/vim-peekaboo'
" Plug 'junegunn/fzf'
" Plug 'junegunn/fzf.vim'
Plug 'Shougo/denite.nvim'
Plug 'morhetz/gruvbox'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Raimondi/delimitMate'
" Plug 'RRethy/vim-illuminate'
Plug 'psf/black'
Plug 'shinchu/lightline-gruvbox.vim'
" Plug 'skywind3000/asyncrun.vim'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'

call plug#end()

runtime vimrc/plugin_options.vimrc
runtime vimrc/custom.vimrc
runtime vimrc/keymaps.vimrc
