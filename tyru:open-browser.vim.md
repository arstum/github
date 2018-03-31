[tyru/open-browser.vim](https://github.com/tyru/open-browser.vim)-----插件使用(添加时间: 2018年 3月30日 星期五 10时59分36秒 CST)
call dein#add('tyru/open-browser.vim')
# 搜索光标所在单词：gx
let g:netrw_nogx = 1 " disable netrw's gx mapping. 
nmap gx <Plug>(openbrowser-smart-search) 
vmap gx <Plug>(openbrowser-smart-search) 
