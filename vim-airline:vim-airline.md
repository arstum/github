[vim-airline/vim-airline](https://github.com/vim-airline/vim-airline)-----插件使用(添加时间: 2018年 3月31日 星期六 11时28分49秒 CST)
call dein#add('vim-airline/vim-airline')
call dein#add('vim-airline/vim-airline-themes')
"状态栏、主题、皮肤
"airline主题
set laststatus=2
let g:airline#extensions#tabline#enabled = 1
let g:airline#extensions#tabline#buffer_idx_mode = 1
let g:airline#extensions#virtualenv#enabled = 1  
"主题箭头 <  <
let g:airline_powerline_fonts = 1
"主题show buffers as tabs
let g:airline#extensions#tabline#enabled = 1
"主题
let g:airline_theme = 'molokai'

