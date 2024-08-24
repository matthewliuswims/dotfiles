" Plugins will be downloaded under the specified directory. see https://github.com/junegunn/vim-plug
" 1. download Vim-Plug via https://github.com/junegunn/vim-plug?tab=readme-ov-file#installation
" 2. Make sure to actually call :PlugInstall while in vim (just literally be in any vim command mode) to install the plugin!!!

call plug#begin('~/.vim/plugged')

" Declare the list of plugins.
Plug 'crusoexia/vim-monokai'

" List ends here. Plugins become visible to Vim after this call.
call plug#end()

colorscheme monokai
syntax on
