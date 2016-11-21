""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"    THE VIM FILES                        /-_-/-  \                                    "
"        _                               ///--_-\\\\                                   "
"       /-\.-.                           |//'' \\\\|                                   "
"      //=" \\\                          \/__ __\///         Why are you here?         "
"     /=/_  _\=                           \-/ /- |/                                    "
"    //| ,  ,/=              .---.  ) )   // /   .)               Why read my vimrc?   "
"   / /C   \ \ \       ( (  /_  _ \      |(__)\ /|                                     "
"   |  |   '  | |           \\></ /      |_---'__/                                     "
"   \\_\\_ ^ ///             \"  /      _/ \--'/ \__     It must be very late at night "    
"    ___/ \-/\___         ___/\~/\___  / | // /\ |  \                                  "
"   /    \/\\/   \           \    \   /  |/|| \_\|  |                                  " 
"   \  \_  \\   \ \           \_/_/\ /  / ||| _\  | | 				       "	
"    \ ==\-._..-| |           / |\  /  /|/ ||  \\ | |  You should go to sleep          "
"     \  ''"_.--' /         _/ _| \   / || \/    \| |    			       "
"     /`--""\"---"                 `-'  ||=======|/ |				       "	
"    / /_/  /\ \\                       |\  .   /\_/ 				       "
"    \_____/  \__\                      |/| |_  \_/| 				       "	
"     \        /                        |:|  |   |\|                                   "
"     /________\                        |:|  |   |:|        Or say hello               "
"        \ ) )                          |:|  |   |:|                                   "
"        / |/                           |:|  |   |:|                                   "
"       .\ |                            |:|  |   |:|          jndeutsch@gmail.com      "
"      /\/_|                             '|__|___|'           @jasonetcetera           "
"     /_ |  \_                           _.' |' |                                      "
"       \_\\__\                         (___(___)                                      "
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" They have a plan...
execute pathogen#infect('~/my_vimrc/bundle/{}')


"""""""""""""""""""""""""""""""
""""""""""" Editor """"""""""""
"""""""""""""""""""""""""""""""


"""  NERDTree

" Open NERDTree if no file or dir specified 
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif


" font
set guifont=Inconsolata

" Move cursor one over EOL
set virtualedit=onemore

" match parens
set showmatch

" UTF8 standard encoding and en_us as standard lang
set encoding=utf8

" Relative line numbers
set rnu

" Alway sshow current position
set ruler

" Spaces > Tabs
set expandtab


set ai " Auto indent
set si " Smart indent
set wrap " Wrap lines

""""""""""""""""""""""""""""""""
""""""""""" Colors """""""""""""
""""""""""""""""""""""""""""""""

"  General
syntax on
set background=dark

" One dark theme support for 
" vim inside iterm
let g:onedark_termcolors=256

colorscheme onedark " by joshdick
"Use 24-bit (true-color) mode in Vim/Neovim when outside tmux.
"If you're using tmux version 2.2 or later, you can remove the outermost $TMUX check and use tmux's 24-bit color support
"(see < http://sunaku.github.io/tmux-24bit-color.html#usage > for more information.)
if (empty($TMUX))
          if (has("nvim"))
             "For Neovim 0.1.3 and 0.1.4 < https://github.com/neovim/neovim/pull/2198 >
              let $NVIM_TUI_ENABLE_TRUE_COLOR=1
           endif
          "For Neovim > 0.1.5 and Vim > patch 7.4.1799 < https://github.com/vim/vim/commit/61be73bb0f965a895bfb064ea3e55476ac175162 >
          "Based on Vim patch 7.4.1770 (`guicolors` option) < https://github.com/vim/vim/commit/8a633e3427b47286869aa4b96f2bfc1fe65b25cd >
          "< https://github.com/neovim/neovim/wiki/Following-HEAD#20160511 >
          if (has("termguicolors"))
            set termguicolors
          endif
endif


"""""""""""""""""""""""""""""""
"""""""""" Linting """"""""""""
"""""""""""""""""""""""""""""""


" Syntastic defaults
set statusline+=%#warningmsg#
set statusline+=%{SyntasticStatuslineFlag()}
set statusline+=%*

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0




""""""""""""""""""""""""""""""""
"""""""" Lang Support """"""""""
""""""""""""""""""""""""""""""""


"" Elm
"  Automatic code formatting
let g:elm_format_autosave = 1


""""""""""""""""""""""""""""""""
""""""""""" MISC """""""""""""""
""""""""""""""""""""""""""""""""

" No F******* swap files
set noswapfile



