if empty(glob('C:/users/chas.busenburg/nvim/bundle/vim-plug/autoload/plug.vim'))
  silent !curl -fLo C:/users/chas.busenburg/nvim/bundle/vim-plug/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  autocmd VimEnter * PlugInstall --sync | source $MYVIMRC
endif

source C:/users/chas.busenburg/nvim/bundle/vim-plug/autoload/plug.vim
call plug#begin('C:/users/chas.busenburg/nvim/bundle')

Plug 'airblade/vim-gitgutter'
" Plug 'b4winckler/vim-angry'
Plug 'itchyny/lightline.vim'
" Plug 'junegunn/vim-peekaboo'
Plug 'Shougo/denite.nvim'
" Plug 'morhetz/gruvbox'
" Plug 'nathanaelkane/vim-indent-guides'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
" Plug 'Raimondi/delimitMate'
" Plug 'RRethy/vim-illuminate'
" Plug 'shinchu/lightline-gruvbox.vim'
Plug 'skywind3000/asyncrun.vim'
" Plug 'altercation/vim-colors-solarized'
" Plug 'taohexxx/lightline-solarized'
Plug 'nanotech/jellybeans.vim'
Plug 'reedes/vim-pencil'
Plug 'tpope/vim-fugitive'
Plug 'tpope/vim-markdown'
Plug 'tpope/vim-surround'
Plug 'tpope/vim-commentary'
Plug 'majutsushi/tagbar'

call plug#end()

runtime vimrc/plugin_options.vimrc
runtime vimrc/custom.vimrc
runtime vimrc/keymaps.vimrc
