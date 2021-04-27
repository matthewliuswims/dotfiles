" Plugins will be downloaded under the specified directory. see https://github.com/junegunn/vim-plug
call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'crusoexia/vim-monokai'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme monokai
syntax on
