
syntax on           " syntax highlighting
set nocompatible    " (cp) use Vim defaults (much better)

set cm=blowfish2    " The only available secure cypher

" Ensure private editing.
" Usage - VIM_PRIVATE=1 vim
if $VIM_PRIVATE
  set nobackup
  set nowritebackup
  set noundofile
  set noswapfile
  set viminfo=""
  set noshelltemp
  set history=0
  set nomodeline
  set secure
endif
 
