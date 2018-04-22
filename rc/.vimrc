"{{{padd 插件管理
	call plug#begin('~/.vim/plugged')
	" {{{ 主题 airline
	Plug 'vim-airline/vim-airline'
	Plug 'vim-airline/vim-airline-themes'
"主题箭头 <  <
let g:airline_powerline_fonts = 1
"主题show buffers as tabs
let g:airline#extensions#tabline#enabled = 1
"主题
let g:airline_theme = 'molokai'
"缩进显示
let g:indent_guides_enable_on_vim_startup = 1
let g:indent_guides_guide_size = 1
set background=dark
"}}}
	" {{{ 撤销、重做 undotree
	Plug 'mbbill/undotree'
nmap \u :UndotreeToggle<cr>
if has("persistent_undo")
set undodir=~/.undodir/
set undofile
endif
"}}}
	"{{{ 文件管理 NerdTree
	Plug 'scrooloose/nerdtree'
nmap \e :NERDTreeToggle<CR>
" 自动启动 NerdTree
" autocmd vimenter * NERDTree
" 显示行号
let NERDTreeShowLineNumbers=1
" 置中
let NERDTreeAutoCenterThreshold=1
" 忽略一下文件的显示
let NERDTreeIgnore=['\.pyc','\~$','\.swp']
" 显示书签列表
let NERDTreeShowBookmarks=1
" 显示隐藏文件
let NERDTreeShowHidden=1
"}}}
	" {{{ 搜索 fzf
	"Plug 'junegunn/fzf.vim'
" If installed using Homebrew
set rtp+=/usr/local/opt/fzf
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
nmap ; :Buffers<CR>
nmap <Leader>t :Tags<CR>
nmap <Leader>r :Files<CR>
nmap <Leader>a :Ag<CR>
"Tell ack.vim to use ag (the Silver Searcher) instead
let g:ackprg = 'ag --vimgrep'
" ggreer / the_silver_searcher
let g:ackprg = 'ag --nogroup --nocolor --column'
"}}}
	"{{{ 快速跳转 vim-easymotion
	Plug 'easymotion/vim-easymotion'
"}}}
	"{{{ 自动补全 deoplete
if has('nvim')
	Plug 'Shougo/deoplete.nvim', { 'do': ':UpdateRemotePlugins' }
else
	Plug 'Shougo/deoplete.nvim'
	Plug 'roxma/nvim-yarp'
	Plug 'roxma/vim-hug-neovim-rpc'
endif
let g:deoplete#enable_at_startup = 1
set tags=~/Documents/Git/coding/cgit/.git/tags
"	Plug 'airblade/vim-gitgutter'
"" Fugitive补充，显示上次更改
"	Plug 'zchee/deoplete-jedi'
"}}}
	"{{{ 浏览器搜索 open-browser Chrome
	Plug 'tyru/open-browser.vim'
let g:netrw_nogx = 1 " disable netrw's gx mapping. 
nmap gx <Plug>(openbrowser-smart-search) 
vmap gx <Plug>(openbrowser-smart-search) 
"}}}
	"{{{ 中英文自动切换 smartim
	Plug 'ybian/smartim'
"}}}
	"{{{ 对齐、缩进 vim-indent-guides
	Plug 'nathanaelkane/vim-indent-guides'
let g:indent_guides_auto_colors = 0
autocmd VimEnter,Colorscheme * :hi IndentGuidesOdd  guibg=red   ctermbg=3
autocmd VimEnter,Colorscheme * :hi IndentGuidesEven guibg=green ctermbg=4
" ? 缩进宽度
" let g:indent_guides_guide_size = 1
"}}}
	"{{{ 注释 nerdcommenter
	Plug 'scrooloose/nerdcommenter'
"}}}
	"{{{ Debug vdebug
	Plug 'vim-vdebug/vdebug'
"}}}
	"{{{ Run vim-test
	Plug 'janko-m/vim-test'
"}}}
	"{{{ 语法检查 ale
	Plug 'w0rp/ale'
let g:ale_sign_column_always = 1
"}}}
	call plug#end()
"}}}

"{{{缩写
	" 插入模式缩写
	"         :iabbrev
	" "命令行模式缩写
	"         :cabbrev
	" "插入、命令行两种模式缩写
	"         :abbreviate
		:cabbrev vin e ~/.config/nvim/init.vim
		:cabbrev vit e ~/.tmux.conf
		:cabbrev viv e ~/.vimrc
		:cabbrev viz e ~/.zshrc
		":cabbrev sou source ~/.zshrc && tmux source ~/.tmux.conf
		:cabbrev sou source ~/.zshrc
		:cabbrev ip !curl ip.cn
		:cabbrev setproxy !export ALL_PROXY=socks5://127.0.0.1:1086
		:cabbrev unsetproxy !unset ALL_PROXY
"}}}

"{{{vim 设置
	"编码\防止乱码
		set fileencodings=utf-8,ucs-bom,gb18030,gbk,gb2312,cp936
		set termencoding=utf-8
		set encoding=utf-8
		set helplang=cn
	"引导键
		let mapleader=","
	"键盘错位修复
		nmap  j gj
		nmap  k gk
	"neovim 退出 terminal 模式
		tnoremap <silent> <esc> <c-\><c-n>
	"取消自动缩进，开启可避免粘贴错位
		set nosmartindent
		set noautoindent
	"与windows共享剪贴板\复制\粘贴
		set clipboard+=unnamed
	" 激活鼠标
		set mouse=a
	" 忽略大小写
		set ignorecase
	" 侦测文件类型
		filetype on
	" 载入文件类型插件
		filetype plugin on
	" 为特定文件类型载入相关缩进文件
		filetype indent on
	" 以下符号指定为连接符,看成一个单词
		set iskeyword+=_,$,@,%,#,-
	" 相对行号
		set number
		set relativenumber
	":set number relativenumber
	" 代码折叠
		set foldmethod=marker
	" set nofoldenable
	" 自动保存折叠
		autocmd BufWrite * mkview
		autocmd BufRead * silent! loadview


"}}}

"{{{备注
		
"}}}
