" Plugins will be downloaded under the specified directory. see https://github.com/junegunn/vim-plug
" Make sure to actually call :PlugInstall while in vim to install the plugin!!!

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'crusoexia/vim-monokai'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme monokai
syntax on
