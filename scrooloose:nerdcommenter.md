[scrooloose/nerdcommenter](https://github.com/scrooloose/nerdcommenter)-----插件使用(添加时间: 2018年 3月31日 星期六 12时01分16秒 CST)
call dein#add('scrooloose/nerdcommenter')
	"批量注释
	"<leader>c<space>  加上/解开注释, 智能判断
	"<leader>cy   先复制, 再注解(p可以进行黏贴)
	filetype plugin on
	" Add spaces after comment delimiters by default
	let g:NERDSpaceDelims = 1
	" Use compact syntax for prettified multi-line comments
	let g:NERDCompactSexyComs = 1
	" Align line-wise comment delimiters flush left instead of following code indentation
	let g:NERDDefaultAlign = 'left'
	" Set a language to use its alternate delimiters by default
	let g:NERDAltDelims_java = 1
	" Add your own custom formats or override the defaults
	let g:NERDCustomDelimiters = { 'c': { 'left': '/**','right': '*/' } }
	" Allow commenting and inverting empty lines (useful when commenting a region)
	let g:NERDCommentEmptyLines = 1
	" Enable trimming of trailing whitespace when uncommenting
	let g:NERDTrimTrailingWhitespace = 1
