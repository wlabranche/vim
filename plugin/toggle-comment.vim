function! ToggleComment ( comment )
  silent execute "s:\\s*:&" . a:comment . " : | s:" . a:comment . " " . a:comment . " ::e"
endfunction
