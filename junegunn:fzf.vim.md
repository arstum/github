[junegunn/fzf.vim](https://github.com/junegunn/fzf.vim)-----插件使用(添加时间: 2018年 4月 1日 星期日 02时13分02秒 CST)
call dein#add('junegunn/fzf.vim')
	"搜索
Plug 'junegunn/fzf.vim'
	" brew install fzf
	" If installed using Homebrew
	set rtp+=/usr/local/opt/fzf
	" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
	nmap ; :Buffers<CR>
	nmap <Leader>r :Tags<CR>
	nmap <Leader>t :Files<CR>
	nmap <Leader>a :Ag<CR>
	"Tell ack.vim to use ag (the Silver Searcher) instead
	let g:ackprg = 'ag --vimgrep'
	"
"Plug ''
