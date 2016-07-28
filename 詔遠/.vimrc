" 定義快捷鍵的前綴，即<Leader>
let mapleader=";"

" 開啟文件類型偵測
filetype on
" 根據偵測到的不同類型加載對應的插件
filetype plugin on
" 關閉程式碼折疊 
set nofoldenable


" 定義快捷鍵到行首和行尾
nmap <Leader>lb 0
nmap <Leader>le $
" 設置快捷鍵將選中文本塊複製至系統剪貼板
vnoremap <Leader>y "+y
" 設置快捷鍵將系統剪貼板內容粘貼至 vim
nmap <Leader>p "+p
" 定義快捷鍵在結對符之間跳轉，助記pair
nmap <Leader>pa %

" 開啟實時搜索功能
set incsearch
" 搜索時大小寫不敏感
set ignorecase
" 關閉兼容模式
set nocompatible
" vim 自身命令行模式智能補全
set wildmenu

" 运行 pathogen
execute pathogen#infect()
filetype plugin indent on 

" 配色方案
"colorscheme seti
"colorscheme wellsokai
"colorscheme valloric
"colorscheme Benokai
colorscheme blackboard
set t_Co=256
syntax on

" 總是顯示狀態欄
set laststatus=2
" 顯示光標當前位置
set ruler
" 開啟行號顯示
set number
" 高亮顯示當前行/列
set cursorline
" 高亮顯示搜索結果
set hlsearch

" 禁止光标闪烁
set gcr=a:block-blinkon0
" 禁止显示滚动条
set guioptions-=l
set guioptions-=L
set guioptions-=r
set guioptions-=R
" 禁止显示菜单和工具条
set guioptions-=m
set guioptions-=T

" Use mouse (only for resizing!)
set mouse=a

" 自适应不同语言的智能缩进
filetype indent on
" 设置编辑时制表符占用空格数
set tabstop=4
" 设置格式化时制表符占用空格数
set shiftwidth=4


" 设置 tagbar 子窗口的位置出现在主编辑区的左边 
let tagbar_right=1 
" 设置显示／隐藏标签列表子窗口的快捷键。速记：tag list 
nnoremap <Leader>tl :TagbarToggle<CR>
nnoremap <silent> <F6> :TagbarToggle<CR> 
" 启动时自动focus
let g:tagbar_autofocus = 1
" 设置标签子窗口的宽度 
let tagbar_width=32 
" tagbar 子窗口中不显示冗余帮助信息 
let g:tagbar_compact=1
" 设置 ctags 对哪些代码元素生成标签
let g:tagbar_type_cpp = {
    \ 'kinds' : [
        \ 'd:macros:1',
        \ 'g:enums',
        \ 't:typedefs:0:0',
        \ 'e:enumerators:0:0',
        \ 'n:namespaces',
        \ 'c:classes',
        \ 's:structs',
        \ 'u:unions',
        \ 'f:functions',
        \ 'm:members:0:0',
        \ 'v:global:0:0',
        \ 'x:external:0:0',
        \ 'l:local:0:0'
     \ ],
     \ 'sro'        : '::',
     \ 'kind2scope' : {
         \ 'g' : 'enum',
         \ 'n' : 'namespace',
         \ 'c' : 'class',
         \ 's' : 'struct',
         \ 'u' : 'union'
     \ },
     \ 'scope2kind' : {
         \ 'enum'      : 'g',
         \ 'namespace' : 'n',
         \ 'class'     : 'c',
         \ 'struct'    : 's',
         \ 'union'     : 'u'
     \ }
\ }


" 使用 NERDTree 插件查看工程文件。设置快捷键，速记：file list
nmap <Leader>fl :NERDTreeToggle<CR>
nnoremap <silent> <F5> :NERDTreeToggle<CR>
" 设置NERDTree子窗口宽度
let NERDTreeWinSize=28
" 设置NERDTree子窗口位置
let NERDTreeWinPos="left"
" 显示隐藏文件
let NERDTreeShowHidden=0
" NERDTree 子窗口中不显示冗余帮助信息
let NERDTreeMinimalUI=1
" 删除文件时自动删除文件对应 buffer
let NERDTreeAutoDeleteBuffer=1


" NERDTreeTabs
let g:nerdtree_tabs_open_on_console_startup=1
let g:nerdtree_tabs_smart_startup_focus=2
let g:nerdtree_tabs_autofind=1


" 允許 Backspace 可以刪除
set backspace=indent,eol,start


" 使用 Alt+方向鍵切換視窗
nmap <silent> <A-Up> :wincmd k<CR>
nmap <silent> <A-Down> :wincmd j<CR>
nmap <silent> <A-Left> :wincmd h<CR>
nmap <silent> <A-Right> :wincmd l<CR>


" 使用 Ctrl+方向鍵切換 Tab
nnoremap <C-Left> :tabprevious<CR>
nnoremap <C-Right> :tabnext<CR>


" 系統剪貼簿
set clipboard=unnamed 
let g:copycat#auto_sync = 1


" Youcompleteme
highlight Pmenu ctermfg=15 ctermbg=17
highlight PmenuSel ctermfg=15 ctermbg=0
let g:ycm_global_ycm_extra_conf = '~/.vim/bundle/YouCompleteMe/third_party/ycmd/cpp/ycm/.ycm_extra_conf.py'
let g:ycm_error_symbol = '>>'
let g:ycm_warning_symbol = '>*'
nnoremap <leader>gdc :YcmCompleter GoToDeclaration<CR>
nnoremap <leader>gdf :YcmCompleter GoToDefinition<CR>
"nnoremap <leader>gg :YcmCompleter GoToDefinitionElseDeclaration<CR>
nmap <F4> :YcmDiags<CR>
let g:ycm_complete_in_comments=1
let g:ycm_complete_in_strings = 1
let g:ycm_confirm_extra_conf=0 
let g:ycm_min_num_of_chars_for_completion = 2 
let g:ycm_enable_diagnostic_signs = 0
let g:ycm_enable_diagnostic_highlighting = 0
let g:ycm_key_invoke_completion = '<C-b>'
let g:ycm_autoclose_preview_window_after_completion = 1
let g:ycm_autoclose_preview_window_after_insertion = 1


" indent guides
let g:indent_guides_enable_on_vim_startup=0
" 从第二层开始可视化显示缩进
let g:indent_guides_start_level=2
" 色块宽度
let g:indent_guides_guide_size=1
" 快捷键 i 开/关缩进可视化
:nmap <silent> <Leader>i <Plug>IndentGuidesToggle
let g:indent_guides_auto_colors = 0
hi IndentGuidesOdd  guibg=red   ctermbg=233
hi IndentGuidesEven guibg=green ctermbg=233
