" auto-install vim-plug
if empty(glob('~/.config/nvim/autoload/plug.vim'))
  silent !curl -fLo ~/.config/nvim/autoload/plug.vim --create-dirs
    \ https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
  "autocmd VimEnter * PlugInstall
  autocmd VimEnter * PlugInstall | source $MYVIMRC
endif

call plug#begin('~/.config/nvim/autoload/plugged')

    " Better Syntax Support
    Plug 'sheerun/vim-polyglot'
    " File Explorer
    Plug 'scrooloose/NERDTree'
    " Auto pairs for '(' '[' '{'
    Plug 'jiangmiao/auto-pairs'
    " Themes
    Plug 'joshdick/onedark.vim'
    Plug 'christianchiarulli/nvcode-color-schemes.vim'
    Plug 'nvim-treesitter/nvim-treesitter'
    " Intellisen
    Plug 'neoclide/coc.nvim', {'branch': 'release'}    
    " Status Line
    Plug 'vim-airline/vim-airline'
    Plug 'vim-airline/vim-airline-themes'
    " Ranger
    Plug 'kevinhwang91/rnvimr', {'do': 'make sync'}
    " FZF
    Plug 'junegunn/fzf', { 'do': { -> fzf#install() } }
    Plug 'junegunn/fzf.vim'
    Plug 'airblade/vim-rooter'    
    " Start Screen
    Plug 'mhinz/vim-startify'
    " Git Integration
    Plug 'mhinz/vim-signify'
    Plug 'tpope/vim-rhubarb'
    Plug 'junegunn/gv.vim'
    " Sneak 
    Plug 'justinmk/vim-sneak'
    " Which Key
    Plug 'liuchengxu/vim-which-key'
    " Floaterm
    Plug 'voldikss/vim-floaterm'
    " Snippets
    Plug 'honza/vim-snippets'
    " icons
    Plug 'ryanoasis/vim-devicons'
    " README preview
    Plug 'iamcco/markdown-preview.nvim', { 'do': 'cd app && yarn install'  }
    
    call plug#end()

" Automatically install missing plugins on startup
autocmd VimEnter *
  \  if len(filter(values(g:plugs), '!isdirectory(v:val.dir)'))
  \|   PlugInstall --sync | q
  \| endif
