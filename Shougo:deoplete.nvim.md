[Shougo/deoplete.nvim](https://github.com/Shougo/deoplete.nvim)-----插件使用(添加时间: 2018年 3月31日 星期六 11时50分49秒 CST)
call dein#add('Shougo/deoplete.nvim')
"自动补全
call dein#add('Shougo/deoplete.nvim')
if !has('nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')
endif
let g:deoplete#enable_at_startup = 1
