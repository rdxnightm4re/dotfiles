"--Mario uwu dotfiles u~u 
set hidden
set list
set listchars=tab:>\ ,trail:·
set number
set termguicolors
set clipboard=unnamedplus
"--Tabs config
set tabstop=4
set shiftwidth=4
set expandtab
set mouse=a

"--Arduino commands 
let filename = @%

command ArduinoCompile terminal arduino-cli compile --fqbn arduino:avr:uno % 
command ArduinoUpload terminal arduino-cli upload -p /dev/ttyACM0 --fqbn arduino:avr:uno  % -v 
command ArduinoSerial terminal putty -serial /dev/ttyACM0 & 

"--PLUGINS
call plug#begin('~/local/share/nvim/plugged')

"Plug 'EdenEast/nightfox.nvim'
Plug 'sudar/vim-arduino-syntax'
Plug 'liuchengxu/vista.vim'
Plug 'morhetz/gruvbox'
Plug 'catppuccin/nvim'
Plug 'dense-analysis/ale'
Plug 'neoclide/coc.nvim', {'branch': 'release'}
Plug 'ojroques/nvim-buildme'
Plug 'airblade/vim-rooter'
Plug 'catppuccin/nvim'
Plug 'kyazdani42/nvim-web-devicons'
Plug 'vim-airline/vim-airline'
Plug 'romgrk/barbar.nvim'
Plug 'lukas-reineke/indent-blankline.nvim'
Plug 'vimwiki/vimwiki'
Plug 'ellisonleao/glow.nvim'
Plug 'vuciv/vim-bujo'
Plug 'preservim/nerdtree'
Plug 'ycm-core/YouCompleteMe'
Plug 'lervag/vimtex'
call plug#end()

packadd! vimspector
let g:vimspector_enable_mappings = 'HUMAN'

colorscheme catppuccin

let g:airline_theme='gruvbox'
let g:ycm_key_list_stop_completion = ['<C-TAB>', '<CR>']

if !exists('g:ycm_semantic_triggers')
    let g:ycm_semantic_triggers = {}
endif 
au VimEnter * let g:ycm_semantic_triggers.tex=g:vimtex#re#youcompleteme

"--delete annoying buffer from YouCompleteMe
autocmd CompleteDone * pclose

nnoremap <C-Left> <Cmd>BufferPrevious<CR>
nnoremap <C-Right> <Cmd>BufferNext<CR>

nnoremap <leader>n :NERDTreeFocus<CR>
nnoremap <C-n> :NERDTree<CR>
nnoremap <C-t> :NERDTreeToggle<CR>
nnoremap <C-f> :NERDTreeFind<CR>

nnoremap <F1> <Cmd>wq<Cr>
nnoremap <C-w> <Cmd>write<CR>

nnoremap <C-Up> <Cmd>j<Cr>
"--Plugins config files
source ~/.config/nvim/plugins/vimtext.vim 
source ~/.config/nvim/plugins/coc.vim
source ~/.config/nvim/plugins/vim_rooter.vim
source ~/.config/nvim/plugins/hexokinase_config.vim
