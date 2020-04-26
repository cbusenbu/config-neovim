
"""""""""""""""""""""""""""""""""""""""""""""
"" My poor man's replacement for vim-slime ""
"""""""""""""""""""""""""""""""""""""""""""""
set splitright
let g:my_active_terminal_job_id = -1

function! LaunchTerminal() range
  silent exe "normal! :vsplit\n"
  silent exe "normal! :terminal\n"
  exe "normal! G\n"
  call SetActiveTerminalJobID()
endfunction

function! LaunchIPython() range
  call LaunchTerminal()
  call jobsend(g:my_active_terminal_job_id, "ipython\r")
endfunction

function! SetActiveTerminalJobID()
  let g:my_active_terminal_job_id = b:terminal_job_id
  echom "Active terminal job ID set to " . g:my_active_terminal_job_id
endfunction

function! SendToTerminal() range
  " Yank the last selection into system clipboard
  silent exe 'normal! gv"+y'
  " Tell IPython to read from the system clipboard
  " The -q switch turns off echoing the code
  call jobsend(g:my_active_terminal_job_id, "%paste -q")
  sleep 210ms
  call jobsend(g:my_active_terminal_job_id, "\r")
endfunction

function! SendNudgeToTerminal() range
  " Send in a nudge.  Can help trigger IPython evaluation
  call jobsend(g:my_active_terminal_job_id, "\r")
endfunction

""" Redraw on Focus gained for a buffer pane """
autocmd FocusGained * :redraw!
