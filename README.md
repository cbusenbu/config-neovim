# config-neovim
Currently testing a pure NeoVim implementation with language servers, still up in the air over coc-vim or hand rolling with LanguageClient-neovim

I recommend using [scoop](https://scoop.sh/) for installing local packages. Like the ones necessary for coc-nvim. I have just found it to be much easier than alternatives. It really reminds me of brew.
## Package Specific instructions
### Coc.nvim
Follow the directions to install coc.vim at https://github.com/neoclide/coc.nvim/wiki/Install-coc.nvim

Run the following in nvim:

`:CocInstall coc-python`
`:CocInstall coc-json`
`:CocInstall coc-lists`
`:CocInstall coc-explorer`

### Black
* Create a new conda environment
	`conda create -n black`
	`activate black`
	`conda install -c conda-forge black`



