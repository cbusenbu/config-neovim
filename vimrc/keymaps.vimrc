" Set mapleader 
let mapleader="\<SPACE>"

" Tabs Mapping
" :tabs list all
" :tabn next tab
" :tabp previous tab
nnoremap <Leader>tt :tabs<CR>
nnoremap <Leader>ts :tab split<CR>
nnoremap <Leader>tf :tabfirst<CR>
nnoremap <Leader>tl :tablast<CR>
nnoremap <Leader>tn :tabn<CR>
nnoremap <Leader>tp :tabp<CR>


" Clear search results with <C-L>
nnoremap <silent> <C-L> :nohlsearch<CR><C-L>

" Allow escape from Terminal editing
tnoremap <Esc> <C-\><C-n>G

" Allow ESC from Terminal editing
tnoremap <Esc> <C-\><C-n>G

" Assign windows a common numbering schema
let i = 1
while i <= 9
  execute 'nnoremap <Leader>' . i . ' ' . i . '<C-W><C-W>'
  let i = i + 1
endwhile

" Stay in visual mode when indenting
vnoremap < <gv
vnoremap > >gv

" leader tab to previous buffer
nnoremap <Leader><Tab> :b#<CR>
nnoremap <Leader>wv <C-W>v
nnoremap <Tab> <C-W><C-W>

" coc-explorer
nnoremap <Leader>pt :CocCommand explorer<CR>

" Make completions work the way you'd think they work
inoremap <expr> <C-j> pumvisible() ? "\<C-n>" : "\<C-j>"
inoremap <expr> <C-k> pumvisible() ? "\<C-p>" : "\<C-k>"
inoremap <expr> <Tab> pumvisible() ? "\<C-n>" : "\<Tab>"

" Expose functions created in custom.vimrc
map <Leader>si :call LaunchIPython()<CR>
map <Leader>sr :call SendToTerminal()<CR>
map <Leader>ss :call SendNudgeToTerminal()<CR>


" Fugitive related mappings
nnoremap <Leader>gs :Gstatus<CR>
nnoremap <Leader>gf :Gfetch --prune<CR>
nnoremap <Leader>gF :Gpull<CR>
nnoremap <Leader>gP :Gpush --set-upstream<CR>
nnoremap <Leader>gp :Gpush<CR>
nnoremap <Leader>gc :Gcommit --verbose<CR>
nnoremap <Leader>gC :Gcommit<CR>
nnoremap <Leader>gd :Gdiff<CR>
nnoremap <Leader>fu :Gblame<CR>

" Remap keys for gotos
nmap <silent> <Leader>d <Plug>(coc-definition)
nmap <silent> <Leader>dt <Plug>(coc-type-definition)
nmap <silent> <Leader>i <Plug>(coc-implementation)
nmap <silent> <Leader>n <Plug>(coc-references)
nnoremap <silent> K :call <SID>show_documentation()<CR>
nmap <leader>r <Plug>(coc-rename)

"CocList shortcuts
nnoremap <Leader>bb :CocList buffers<CR>
nnoremap <Leader>/p :CocList grep<CR>
nnoremap <Leader>/ :CocList lines<CR>
nnoremap <Leader>t :CocList tags<CR>

nnoremap <silent> <space>/w :exe 'CocList -I --normal --input='.expand('<cword>').' words'<CR>
nnoremap <silent> <space>/W :exe 'CocList -I --normal --input='.expand('<cword>').' grep'<CR>
