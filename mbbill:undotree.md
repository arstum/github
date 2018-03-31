[mbbill/undotree](https://github.com/mbbill/undotree)-----插件使用(添加时间: 2018年 3月31日 星期六 10时55分35秒 CST)
call dein#add('mbbill/undotree')
"撤销、重做
call dein#add('mbbill/undotree')
"启用持久性撤消
if has("persistent_undo")
    set undodir=~/.undodir/
    set undofile
endif

