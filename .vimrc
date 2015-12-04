" -----------------   Author: paranoidxe
" -----------------    Email: i@gnux.cn
" -----------------     Date: 2015-04-03 16:23:05


" 判断工作地点，根据指定路径的文件是否存在判断


" 启动时进入工作目录
if exists("~/workspace/")
    cd ~/workspace/
endif

"Set mapleader
let mapleader = ","
let g:mapleader = ","



" ---------- Ctrl系按键 ----------
"
" Ctrl + H                   --光标移当前行行首       [插入模式]
" Ctrl + J                   --光标移下一行行首       [插入模式]
" Ctrl + K                   --光标移上一行行尾       [插入模式]
" Ctrl + L                   --光标移当前行行尾       [插入模式]

" ---------- Meta系按键 ----------
"
" Alt  + H                   --光标左移一格           [插入模式] [Linux下可能失效]
" Alt  + J                   --光标下移一格           [插入模式] [Linux下可能失效]
" Alt  + K                   --光标上移一格           [插入模式] [Linux下可能失效]
" Alt  + L                   --光标右移一格           [插入模式] [Linux下可能失效]

" ---------- Leader系按键 ----------
"
" \c                         --复制至公共剪贴板       [仅选择模式]
" \a                         --复制所有至公共剪贴板   [Normal模式可用]
" \v                         --从公共剪贴板粘贴       [全模式可用]
"
" \rr                        --一键编译&&运行         [全模式可用]
" \rb                        --一键去除所有尾部空白   [全模式可用]
" \rm                        --一键去除^M字符         [全模式可用]
" \rt                        --一键替换全部Tab为空格  [全模式可用]
"
" \ww                        --打开Vimwiki主页
" \wa                        --一键编译所有Vimwiki源文件
" \nt                        --打开NERDTree文件树窗口
" \tl                        --打开/关闭TagList/TxtBrowser窗口
"
" \be                        --打开BufExplorer窗口    [独立显示] [Normal模式可用]
" \bs                        --打开BufExplorer窗口    [分割显示] [Normal模式可用]
" \bv                        --打开BufExplorer窗口    [边栏显示] [Normal模式可用]
"
" \fe                        --打开/关闭文件编码窗口  [Normal模式可用]
" \ff                        --打开文件搜索窗口       [Normal模式可用]
" \mp                        --生成Promptline脚本文件 [Normal模式可用]
"
" \gi                        --开启或关闭GitGutter    [Normal模式可用]
" \gd                        --打开Git文件对比模式 [竖直] [Normal模式可用]
" \gs                        --打开Git文件对比模式 [水平] [Normal模式可用]
"
" \ig                        --显示/关闭对齐线        [Normal模式可用]
" \bb                        --按=号对齐代码          [Normal模式可用]
" \bn                        --自定义对齐             [Normal模式可用]
" \th                        --一键生成与当前编辑文件同名的HTML文件 [不输出行号]
" \ev                        --编辑当前所使用的Vim配置文件
"
" \cc                        --添加注释               [NERD_commenter]
" \cu                        --取消注释               [NERD_commenter]
" \cm                        --添加块注释             [NERD_commenter]
" \cs                        --添加SexStyle块注释     [NERD_commenter]
"
" \php                       --一键切换到PHP语法高亮
" \js                        --一键切换到JavaScript语法高亮
" \css                       --一键切换到CSS语法高亮
" \html                      --一键切换到HTML语法高亮

" ---------- 补全命令 ----------
"
" Ctrl + P                   --缓冲区补全             [插入模式]
" Tab键                      --语法结构补全           [插入模式] [snipMate插件]
" Ctrl + Y + ,               --HTML标签补全           [插入模式] [emmet插件]

" ---------- 格式化命令 ----------
"
" ==                         --缩进当前行
" =G                         --缩进直到文件结尾
" gg=G                       --缩进整个文件
" 行号G=行号G                --缩进指定区间

" u [小写]                   --单步复原               [非插入模式]
" U [大写]                   --整行复原               [非插入模式]
" Ctrl + R                   --撤消“撤消”操作         [非插入模式]
"
" ---------- 查看命令 ----------
"
" Ctrl+G                     --显示当前文件和光标的粗略信息
" g Ctrl+G                   --显示当前文件和光标的详细信息
"
" ---------- 搜索命令 ----------
"
" #                          --向前搜索当前光标所在字符
" *                          --向后搜索当前光标所在字符
" ?                          --向前搜索
" /                          --向后搜索
"
" ---------- 跳转命令 ----------
"
" Ctrl + ]                   --转到函数定义           [ctags跳转]
" Ctrl + T                   --返回调用函数           [ctags跳转]

" Ctrl + O                   --跳到上一个编辑位置     [Normal模式]
" Ctrl + I                   --跳回下一个编辑位置     [Normal模式]

" 0 or ^ or $                --跳至 行首 or 第一个非空字符 or 行尾
" %                          --在匹配的括号间跳跃
" { or }                     --按段落上/下跳跃
" f字符                      --跳至从当前光标开始本行第一个指定字符出现的位置
" gd                         --跳至当前光标所在单词首次出现的位置
" gf                         --打开当前光标所在的文件名，如果确实存在该文件的话
"
" ]c                         --跳到下一个差异处
" [c                         --跳到上一个差异处
"
" [ Ctrl+D                   --跳至当前光标所在变量的首次定义位置 [从文件头部开始]
" [ Ctrl+I                   --跳至当前光标所在变量的首次出现位置 [从文件头部开始]
" [ D                        --列出当前光标所在变量的所有定义位置 [从文件头部开始]
" [ I                        --列出当前光标所在变量的所有出现位置 [从文件头部开始]
"
" ---------- 文本操作 ----------
"
" dw de d0 d^ d$ dd          --删除
" cw ce c0 c^ c$ cc          --删除并进入插入模式
" yw ye y0 y^ y$ yy          --复制
" vw ve v0 v^ v$ vv          --选中
"
" di分隔符                   --删除指定分隔符之间的内容 [不包括分隔符]
" ci分隔符                   --删除指定分隔符之间的内容并进入插入模式 [不包括分隔符]
" yi分隔符                   --复制指定分隔符之间的内容 [不包括分隔符]
" vi分隔符                   --选中指定分隔符之间的内容 [不包括分隔符]
"
" da分隔符                   --删除指定分隔符之间的内容 [包括分隔符]
" ca分隔符                   --删除指定分隔符之间的内容并进入插入模式 [包括分隔符]
" ya分隔符                   --复制指定分隔符之间的内容 [包括分隔符]
" va分隔符                   --选中指定分隔符之间的内容 [包括分隔符]
"
" Xi和Xa都可以在X后面加入一个数字，以指代所处理的括号层次
" 如 d2i( 执行的是删除当前光标外围第二层括号内的所有内容
"
" dt字符                     --删除本行内容，直到遇到第一个指定字符 [不包括该字符]
" ct字符                     --删除本行内容，直到遇到第一个指定字符并进入插入模式 [不包括该字符]
" yt字符                     --复制本行内容，直到遇到第一个指定字符 [不包括该字符]
" vt字符                     --选中本行内容，直到遇到第一个指定字符 [不包括该字符]
"
" df字符                     --删除本行内容，直到遇到第一个指定字符 [包括该字符]
" cf字符                     --删除本行内容，直到遇到第一个指定字符并进入插入模式 [包括该字符]
" yf字符                     --复制本行内容，直到遇到第一个指定字符 [包括该字符]
" vf字符                     --选中本行内容，直到遇到第一个指定字符 [包括该字符]
"
" XT 和 XF 是 Xt/Xf 的反方向操作
"
" cs'"                        --将外围的单引号变成双引号     [surround.vim插件]
" cs"<p>                      --将外围的双引号变成HTML标签对 [surround.vim插件]
" cst"                        --将外围的界定符变成双引号     [surround.vim插件]
" ds"                         --删除外围的双引号定界符       [surround.vim插件]
"
" ---------- 文本比较 ----------
"
" dp                         --将当前文件所在差异行替换到对比文件 [give]
" do                         --将对比文件所在差异行替换到当前文件 [get]
"
" ---------- 便捷操作 ----------
"
" Ctrl + A                   --将当前光标所在数字自增1        [仅普通模式可用]
" Ctrl + X                   --将当前光标所在数字自减1        [仅普通模式可用]
" :g/^/m0                    --将整个文件所有行排列顺序颠倒   [命令模式]
" m字符       and '字符      --标记位置 and 跳转到标记位置
" q字符 xxx q and @字符      --录制宏   and 执行宏
"
" ---------- 代码折叠 ----------
"
" zc                         --折叠
" zC                         --对所在范围内所有嵌套的折叠点进行折叠
" zo                         --展开折叠
" zO                         --对所在范围内所有嵌套的折叠点展开
" [z                         --到当前打开的折叠的开始处
" ]z                         --到当前打开的折叠的末尾处
" zj                         --向下移动到后一个折叠的开始处
" zk                         --向上移动到前一个折叠的结束处
"
" ---------- Vimwiki [Vim中的wiki/blog系统] ----------------
"
" 链接：[[链接地址|链接描述]]
" 图片：{{图片地址||属性1="属性值" 属性2="属性值"}}
" 代码：{{{语言名 代码 }}}，如 {{{C++ 代码 }}}
"
" ---------- 其他常用内建命令 ------------------------------
"
" :se ff=unix                --更改文件格式，可选 unix、dos、mac
" :se ft=cpp                 --更改文件语法着色模式


" 判断操作系统类型
"=====================
" Platform
"=====================
let g:iswindows = 0
let g:islinux = 0
if(has("win32") || has("win64") || has("win95") || has("win16"))
    let g:iswindows = 1
else
    let g:islinux = 1
endif

"=====================
"  gui console
"=====================
if has("gui_running")
    let g:isGUI = 1
else
    let g:isGUI = 0
endif

"编辑vim配置文件
if has("unix")
  set fileformats=unix,mac,dos
  "let $VIMFILES = $HOME."/.vim"
else
  set fileformats=dos,unix,mac
  "let $VIMFILES = $VIM."/vimfiles"
endif

set nocompatible
filetype off

if g:islinux
    set rtp+=~/.vim/bundle/Vundle.vim/
    call vundle#begin()
else
    set rtp+=$VIM/vimfiles/bundle/Vundle.vim
    call vundle#begin('$VIM/vimfiles/bundle/')
endif



set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" required!
Plugin 'gmarik/Vundle.vim'
" My Bundles here:
"Color
Plugin 'asins/vim-colors'
Plugin 'flazz/vim-colorschemes'
Plugin 'altercation/vim-colors-solarized'
Plugin 'Mustang2'
Plugin 'Railscasts-Theme-GUIand256color'
Plugin 'darktango.vim'
Plugin 'junegunn/seoul256.vim'
Plugin 'NLKNguyen/papercolor-theme'

Plugin 'scrooloose/nerdtree'
Plugin 'tpope/vim-fugitive'
Plugin 'bling/vim-airline'
Plugin 'kien/ctrlp.vim'
Plugin 'tacahiroy/ctrlp-funky'

"Plugin 'jrhorn424/vim-multiple-cursors'
Plugin 'sirver/ultisnips'
Plugin 'nathanaelkane/vim-indent-guides'
Plugin 'vim-scripts/OmniCppComplete'
Plugin 'kevinw/pyflakes'
Plugin 'asins/vim-dict'
"Plugin 'itspriddle/vim-marked'
"let g:marked_app = "Marked"
Plugin 'scrooloose/nerdcommenter'
Plugin 'asins/renamer.vim'
Plugin 'auto_mkdir'
"Plugin 'winmanager'
Plugin 'jlanzarotta/bufexplorer'
Plugin 'eiginn/netrw'
" Syntax
Plugin 'othree/html5.vim'
Plugin 'othree/html5-syntax.vim'

Plugin 'pangloss/vim-javascript'
Plugin 'nono/jquery.vim'
Plugin 'groenewege/vim-less'
"live script
Plugin 'gkz/vim-ls' 

" Indent
"Plugin 'IndentAnything'
Plugin 'jiangmiao/simple-javascript-indenter'
Plugin 'Yggdroot/indentLine'
Plugin 'Shougo/neocomplete.vim'
"Plugin 'asins/mark'
"Plugin 'Mark--Karkat'
" HTML tools
Plugin 'mattn/emmet-vim'
Plugin 'tpope/vim-ragtag'
Plugin 'matchit.zip' " 通过%跳转配对代码
Plugin 'MatchTag' " HTML标签高亮配对
Plugin 'maksimr/vim-jsbeautify' "HTML/CSS/JS代码格式化
"标签导航
Plugin 'majutsushi/tagbar'
Plugin 'vim-scripts/taglist.vim'
Plugin 'slim-template/vim-slim'
Plugin 'vim-coffee-script'
Plugin 'AndrewRadev/vim-eco'
Plugin 'sudo.vim'
Plugin 'xml.vim'
"Plugin 'othree/xml.vim'

"Plugin 'honza/vim-snippets'

Plugin 'tpope/vim-bundler'
Plugin 'tpope/vim-dispatch'
"Plugin 'Lokaltog/vim-powerline'
"Plugin 'tpope/vim-fugitive'
Plugin 'Lokaltog/vim-easymotion'
Plugin 'godlygeek/tabular'

Plugin 'mitsuhiko/jinja2'
Plugin  'Glench/Vim-Jinja2-Syntax'
Plugin 'jason0x43/vim-js-indent'
Plugin 'elzr/vim-json'
Plugin 'briancollins/vim-jst'
Plugin 'mxw/vim-jsx'
Plugin 'JuliaLang/julia-vim'
Plugin 'udalov/kotlin-vim'
Plugin 'vim-latex/vim-latex'
Plugin 'rkulla/pydiction'
Plugin 'baskerville/bubblegum'
Plugin 'chriskempson/base16-vim'
"Plugin 'walm/jshint.vim'
"修改版本
Plugin 'vim-scripts/snipmate'
"Plugin 'msanders/snipmate.vim'
"Plugin 'Align'
Plugin 'a.vim'
Plugin 'jiangmiao/auto-pairs'
Plugin 'ccvext.vim'
Plugin 'cSyntaxAfter'
"Syntax 
Plugin 'NLKNguyen/c-syntax.vim'
Plugin 'octol/vim-cpp-enhanced-highlight'
Plugin 'dtrace-syntax-file'
Plugin 'raichoo/haskell-vim'
Plugin 'aklt/plantuml-syntax'
Plugin 'vim-scripts/mips.vim'
Plugin 'Shirk/vim-gas'
Plugin 'skammer/vim-css-color'
Plugin 'hail2u/vim-css3-syntax'
Plugin 'd0f/vim-css3'
Plugin 'mbbill/fencview'
Plugin 'othree/javascript-libraries-syntax.vim'
Plugin 'edkolev/promptline.vim'
Plugin 'tomtom/tlib_vim'
Plugin 'tomtom/vimtlib'
"Plugin 'repeat.vim'
Plugin 'wesleyche/SrcExpl'
Plugin 'std_c.zip'
Plugin 'scrooloose/syntastic'
Plugin 'TxtBrowser'
Plugin 'xsbeats/vim-blade'
"Plugin 'tpope/vim-bundler'
Plugin 'ZoomWin'
Plugin 'mattn/calendar.vim'
Plugin 'd0f/vim-clojure'
Plugin 'd0f/vim-cpp11'
Plugin 'd0f/vim-cppstl'
Plugin 'd0f/vim-csharp'
Plugin 'd0f/vim-csv'
Plugin 'd0f/vim-dart'
Plugin 'd0f/vim-erlang'
Plugin 'd0f/vim-scss'
Plugin 'elixir-lang/vim-elixir'
Plugin 'd0f/vim-fsharp'
Plugin 'andreimaxim/vim-io'
Plugin 'd0f/vim-gtk'
Plugin 'd0f/vim-haskell'
Plugin 'd0f/vim-haxe'
Plugin 'd0f/vim-java'
Plugin 'vim-perl/vim-perl'
Plugin 'StanAngeloff/php.vim'
Plugin '2072/PHP-Indenting-for-VIm'
Plugin 'hdima/python-syntax'
Plugin 'wlangstroth/vim-racket'
Plugin 'tpope/vim-rails'
Plugin 'Keithbsmiley/swift.vim'
Plugin 'leafgarland/typescript-vim'
Plugin 'nickhutchinson/vim-systemtap'
Plugin 'vim-ruby/vim-ruby'
Plugin 'rust-lang/rust.vim'
"Plugin 'beyondwords/vim-twig'
Plugin 'derekwyatt/vim-scala'
"Plugin 'Shougo/vimshell.vim'
Plugin 'mustache/vim-mustache-handlebars'
Plugin 'fatih/vim-nginx'
Plugin 'b4winckler/vim-objc'
Plugin 'jvirtanen/vim-octave'
Plugin 'digitaltoad/vim-jade'
Plugin 'velocity.vim'
"Plugin 'TaskList.vim'
"Plugin 'tpope/vim-markdown'
Plugin 'plasticboy/vim-markdown'
Plugin 'Rykka/InstantRst'
Plugin 'Rykka/riv.vim'
Plugin 'hotoo/pangu.vim'
Plugin 'airblade/vim-gitgutter'
Plugin 'gregsexton/gitv'
Plugin 'tpope/vim-commentary'
Plugin 'tpope/vim-surround'
Plugin 'Raimondi/delimitMate'
Plugin 'hsitz/VimOrganizer'
Plugin 'youjumpiwatch/vim-javacomplete'
Plugin 'jaytang0923/project.vim'

Plugin 'lepture/vim-jinja'
if version < 704
  Plugin 'JulesWang/css.vim'
endif
Plugin 'cakebaker/scss-syntax.vim'
Plugin 'stephpy/vim-yaml'
Plugin 'cstrahan/vim-capnp'
Plugin 'dag/vim2hs'

"Plugin 'Shougo/unite.vim'
Plugin 'Shougo/vimfiler.vim'
Plugin 'sjl/gundo.vim'
Plugin 'davidhalter/jedi-vim'
Plugin 'rhysd/committia.vim'

"Plugins for golang
Plugin 'fatih/vim-go'
Plugin 'Blackrush/vim-gocode'
Plugin 'dgryski/vim-godef'
call vundle#end()            " required
filetype plugin indent on    " required

"goimports settings
autocmd BufWritePre *.go :Fmt
syntax enable
filetype plugin on

set shell=/bin/sh
let g:neocomplete#enable_at_startup = 1
let g:tagbar_type_go = {
    \ 'ctagstype' : 'go',
    \ 'kinds'     : [
        \ 'p:package',
        \ 'i:imports:1',
        \ 'c:constants',
        \ 'v:variables',
        \ 't:types',
        \ 'n:interfaces',
        \ 'w:fields',
        \ 'e:embedded',
        \ 'm:methods',
        \ 'r:constructor',
        \ 'f:functions'
    \ ],
    \ 'sro' : '.',
    \ 'kind2scope' : {
        \ 't' : 'ctype',
        \ 'n' : 'ntype'
    \ },
    \ 'scope2kind' : {
        \ 'ctype' : 't',
        \ 'ntype' : 'n'
    \ },
    \ 'ctagsbin'  : 'gotags',
    \ 'ctagsargs' : '-sort -silent'
\ }


"Autocmd for golint
"set rtp+=$GOPATH/src/github.com/golang/lint/misc/vim
"autocmd BufWritePost,FileWritePost *.go execute 'Lint' | cwindow

filetype plugin indent on     " required!
" 文件格式，默认 ffs=dos,unix
set fileformat=unix
set fileformats=unix,dos,mac


"set noeb   "去掉输入错误的提示声音
set confirm " 在处理未保存或只读文件的时候，弹出确认
"set paste
set clipboard+=unnamed " 与windows共享剪贴板
set undolevels=1000             " number of forgivable mistakes
set updatecount=100             " write swap file to disk every 100 chars
set complete=.,w,b,u,U,t,i,d    " do lots of scanning on tab completion

"set copyindent    " copy the previous indentation on autoindenting

" auto reload vimrc when editing it
autocmd! bufwritepost .vimrc source ~/.vimrc

" 保存全局变量
set viminfo+=!
set viminfo=%100,'100,/100,h,\"500,:100,n~/.viminfo
" 带有如下符号的单词不要被换行分割
set iskeyword+=_,$,@,%,#,-

set ambiwidth=double
set imcmdline
set go= "不要图形按钮
set novisualbell    " 不要闪烁(不明白)
"autocmd GUIEnter * simalt ~x

set guioptions=EgrLt
map <silent> <M-m> :if &guioptions =~# 'T' <Bar>
      \set guioptions-=T <Bar>
      \set guioptions-=m <bar>
      \else <Bar>
      \set guioptions+=T <Bar>
      \set guioptions+=m <Bar>
      \endif<CR>

" 对部分语言设置单独的缩进
au FileType groovy,scala,clojure,scheme,racket,lisp,lua,ruby,eruby,slim,elixir,julia,dart,haxe,coffee,jade,sh set shiftwidth=2
au FileType groovy,scala,clojure,scheme,racket,lisp,lua,ruby,eruby,slim,elixir,julia,dart,haxe,coffee,jade,sh set tabstop=2

" 根据后缀名指定文件类型
au BufRead,BufNewFile *.h        setlocal ft=c
au BufRead,BufNewFile *.m        setlocal ft=objc
au BufRead,BufNewFile *.di       setlocal ft=d
au BufRead,BufNewFile *.cl       setlocal ft=lisp
au BufRead,BufNewFile *.phpt     setlocal ft=php
au BufRead,BufNewFile *.inc      setlocal ft=php
au BufRead,BufNewFile *.sql      setlocal ft=mysql
au BufRead,BufNewFile *.tpl      setlocal ft=smarty
au BufRead,BufNewFile *.txt      setlocal ft=txt
au BufRead,BufNewFile *.log      setlocal ft=conf
au BufRead,BufNewFile hosts      setlocal ft=conf
au BufRead,BufNewFile http*.conf setlocal ft=apache
au BufRead,BufNewFile *.conf     setlocal ft=nginx
au BufRead,BufNewFile *.ini      setlocal ft=dosini
" txtbrowser {{{
" 用于文本文件生成标签与与语法高亮（调用TagList插件生成标签，如果可以）
au BufRead,BufNewFile *.txt setlocal ft=txt
" }}}



set showtabline=2 " always display tab page labels
set number        " show line number
set laststatus=2  " always show the status line
set showcmd       " display incomplete commands
set cmdheight=2   " the height of command bar is 2 lines

if has('gui_running')
  autocmd GUIEnter * winpos 0 0 | set lines=999 columns=9999
  let g:Powerline_symbols = 'fancy'
  set guifont=Hack\ DejaVu\ Sans\ Mono\ for\ Powerline\ 9,Menlo:h12,Consolas:h12:cANSI,Monaco:h12
  "set guifont=Source\ Code\ Pro\ 12,DejaVu\ 9,Consolas\ Powerline\ FixedD:h13
  set guioptions-=m "Remove menubar"
  set guioptions-=T "Remove toolbar"
  " fix the gui menu encoding problem
  if has("gui_win32")
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
  endif
endif

"Set font
if has("gui_gtk2")
     colorscheme PaperColor                         
    set guifont=DejaVu\ Sans\ Mono\ 12
                              
elseif has("gui_macvim")
                              
    set guifont=DejaVu_Sans_Mono:h12
                              
elseif has("gui_win32")
                              
    set guifont=DejaVu_Sans_Mono:h12
end

if has("linux")
  Ubuntu 14.04下GVIM的字体间距过宽
  set gfn=Source\ Code\ Pro\ 12,DejaVu\ 9,Bitstream\ Vera\ Sans\ Mono\ 11
endif
set guifont=Hack\ 12
" 设置着色模式和字体
syntax on
if has('gui_running')
  set background=dark
  colorscheme PaperColor
else
  set background=dark
  
endif
colorscheme solarized
"colorscheme molokai
set background=light
let g:solarized_termcolors=256


set mouse=a selection=exclusive selectmode=mouse,key                " 启用鼠标
"set nomodeline      " using the 'securemodelines' plugin instead
set printfont=courier:h8
set printoptions=paper:letter
set mousem=popup "Enable the popup menu.

" status line {{{
set laststatus=2             " 开启状态栏信息
set showcmd             " Show current vim command in status bar
set ruler                    " 右下角显示光标位置的状态行
set modelines=1
set rulerformat=%55(%{strftime('%a\ %b\ %e\ %I:%M\ %p')}\ %5l,%-6(%c%V%)\ %P%)
let g:airline_powerline_fonts = 1
if !exists('g:airline_symbols')
 let g:airline_symbols = {}
endif
" }}}


set nocompatible             " 关闭兼容模式
set autochdir                " 设定文件浏览器目录为当前目录
set cmdheight=2              " 命令行的高度，默认为1，这里设为2


" 如遇Unicode值大于255的文本，不必等到空格再折行。
set formatoptions+=m
" 自动补全配置让Vim补全菜单行为跟IDE一致
set completeopt=longest,menu

" general settings {{{
"set nobackup                 " 不生成备份文件
"set noswapfile               " 不生成交换文件
"set nobackup " 取消备份。 视情况自己改
"set noswapfile  " 关闭交换文件,IMPORTANT: comment this line if you are working on a remote host
"set nowritebackup
"保存关闭文件之前保留一个备份
"set writebackup

set backup
"set backupext=.bak
set backupext=~
"set patchmode=.orig
set backupdir=~/.vim/backup
set directory=~/.vim/tmp 	" directory to place swap files in
"set backupskip=/tmp/*
"set backupdir=E:\Bak
"set backupskip=D:/Temp/*

" 优化大文件编辑
let g:LargeFile=10

set hidden                   " 允许在有未保存的修改时切换缓冲区
set autoread                 " 当文件在外部被修改时自动更新该文件
set history=1000
set backspace=indent,eol,start

"在输入命令时列出匹配的项目，也就是截图底部的效果
set wildmenu   " 开启命令行补全
set wildmode=longest,full
set wildignore=*.swp,*.bak,*.pyc,*.class,.svn,*.o,*~,tmp,.bundle,.sass-cache,.git,.hg,doc,coverage,vendor,node_modules,deps

set scrolloff=3
set splitright
set splitbelow

set t_vb=
set noerrorbells
set novisualbell
set t_Co=256
set ttyfast
set lazyredraw
set timeoutlen=500
" }}}

" colors, formatting and syntax highlighting {{{
syntax enable                " 打开语法高亮
syntax on                    " 开启文件类型侦测
filetype indent on           " 针对不同的文件类型采用不同的缩进格式
filetype plugin on           " 针对不同的文件类型加载对应的插件
filetype plugin indent on    " 启用自动补全
set background=dark
set cursorcolumn
"set cursorline

"set nowrap                  " 设置不自动换行
set synmaxcol=200 " Do not highlight long lines
set softtabstop=2
set tabstop=2
set shiftwidth=2 " 设置通用缩进策略
set shiftround
set expandtab                " 将Tab自动转化成空格 [需要输入真正的Tab键时，使用 Ctrl+V + Tab]
set autoindent  " 自动对齐
"set ai!                      " 设置自动缩进
set smartindent              " 智能自动缩进
set nojoinspaces
set number
"set nu!                      " 显示行号
"set relativenumber           " 开启相对行号
set numberwidth=4
set backspace=2              " 设置退格键可用
set linespace=1              "行间距，如果默认值太小，代码看起来非常纠结

"set encoding=utf-8
set list                     " 显示特殊字符，其中Tab使用高亮~代替，尾部空白使用高亮点号代替
"set listchars=tab:\~\ ,trail:.
set listchars=tab:\~\ ,eol:$,trail:.,extends:»,precedes:«,nbsp:+
" }}}

" searching {{{
set hlsearch     " 开启高亮显示结果
set incsearch    " 开启实时搜索功能
set ignorecase
set nowrapscan   " 搜索到文件两端时不重新搜索
set smartcase
set showfulltag         " Get function usage help automatically
set showmatch           " Show matching parentheses/brackets
"set showmatch               " 显示括号配对情况
set showmode            " Show current vim mode
if executable("ack")
  set grepprg=ack\ -H\ --nogroup\ --nocolor\ --ignore-dir=tmp\ --ignore-dir=doc
endif
" }}}

" Folding {{{
"set foldenable  "启用折叠
"set foldlevelstart=10
"set foldnestmax=10
"set foldmethod=indent   "indent 折叠方式                           
"set foldmethod=marker                                "marker 折叠方式
set foldlevel=100            " 禁止自动折叠
" }}}


" 设置文件编码和文件格式
set fenc=utf-8
set encoding=utf-8
set fileencodings=utf-8,gbk,cp936,latin-1
set fileformat=unix
set fileformats=unix,mac,dos
if g:iswindows
    source $VIMRUNTIME/delmenu.vim
    source $VIMRUNTIME/menu.vim
    language messages zh_CN.utf-8
endif

"=====================
"Enhanced cursor
"====================
"set cursorcolumn
"set cursorline
"if version >= 703
"if exists('+colorcolumn')
"  set colorcolumn=80
"  hi ColorColumn ctermbg=lightred guibg=lightred
"endif
" Set colorcolumn to match coding styleguides of various source trees.
if exists("&colorcolumn")   " old vim doesn't have colorcolumn
  set colorcolumn=+1  " highlight the column after 'textwidth'
  au BufRead,BufNewFile,BufWritePost *
        \ if expand('<amatch>') =~ '\v^/.*/(source|work/.*)/client[^/]*/.*$' | 
        \     setl textwidth=80 colorcolumn=121 |
        \ elseif expand('<amatch>') =~ '\v^/.*/(source|work/.*)/(server|go-server|configs)/.*$' |
        \     setl textwidth=80 colorcolumn=101 |
        \ endif
  " Prefer not to aggressively line-wrap some file types
  au FileType vim setl colorcolumn=
endif

" Low priority filename suffixes for filename completion {{{
"set suffixes-=.h        " Don't give .h low priority
"set suffixes+=.aux
"set suffixes+=.log
"set wildignore+=*.dvi
"set suffixes+=.bak
"set suffixes+=~
"set suffixes+=.swp
"set suffixes+=.o
"set suffixes+=.class
" }}}


"分割窗口的时候保持相等的宽/高
set equalalways
set shortmess=atI       " 启动的时候不显示那个援助索马里儿童的提示

set background=dark
" 使用GUI界面时的设置
if g:isGUI
    " 启动时自动最大化窗口
    if g:iswindows
        au GUIEnter * simalt ~x 
	winpos 100 10                                     "指定窗口出现的位置，坐标原点在屏幕左上角 100 10
  	set lines=30 columns=112                          "指定窗口大小，lines为高度，columns为宽度
  	"set lines=9999
  	"set columns=9999
    endif
    winpos 410 230            " 指定窗口出现的位置，坐标原点在屏幕左上角
    set lines=20 columns=90 " 指定窗口大小，lines为高度，columns为宽度
    set guioptions+=c        " 使用字符提示框
    set guioptions-=m        " 隐藏菜单栏
    set guioptions-=T        " 隐藏工具栏
    set guioptions-=L        " 隐藏左侧滚动条
    set guioptions-=r        " 隐藏右侧滚动条
    set guioptions-=b        " 隐藏底部滚动条
    set showtabline=0        " 隐藏Tab栏
    set cursorline           " 高亮突出当前行
    "set cursorcolumn        " 高亮突出当前列
endif

" 把 CTRL-S 映射为 保存,因为这个操作做得太习惯了
imap <C-S> <C-C>:w<CR>


" ======= 引号 && 括号自动匹配 ======= "

:inoremap ( ()<ESC>i
:inoremap ) <c-r>=ClosePair(')')<CR>
:inoremap { {}<ESC>i
:inoremap } <c-r>=ClosePair('}')<CR>
:inoremap [ []<ESC>i
:inoremap ] <c-r>=ClosePair(']')<CR>
:inoremap " ""<ESC>i
:inoremap ' ''<ESC>i
:inoremap ` ``<ESC>i

function ClosePair(char)
    if getline('.')[col('.') - 1] == a:char
        return "\<Right>"
    else
        return a:char
    endif
endf


" 加载pathogen插件管理器
"execute pathogen#infect()


" 针对部分语言加减指定字符的单词属性
au FileType clojure  set iskeyword-=.
au FileType clojure  set iskeyword-=>
au FileType perl,php set iskeyword-=.
au FileType perl,php set iskeyword-=$
au FileType perl,php set iskeyword-=-
au FileType ruby     set iskeyword+=!
au FileType ruby     set iskeyword+=?


if exists("did_load_filetypes")
  finish
endif
augroup filetypedetect
	au! BufNewFile,BufRead *.zu     setf zimbu
	augroup END

augroup vimrc_autocmds
    autocmd!
    " highlight characters past column 120
    autocmd FileType python highlight Excess ctermbg=DarkGrey guibg=Black
    autocmd FileType python match Excess /\%120v.*/
    autocmd FileType python set nowrap
    augroup END

" 针对部分语言添加字典补全
au FileType c          call AddCDict()
au FileType cpp        call AddCPPDict()
au FileType java       call AddJavaDict()
au FileType lua        call AddLuaDict()
au FileType perl       call AddPerlDict()
au FileType php        call AddPHPDict()
au FileType python     call AddPythonDict()
au FileType ruby       call AddRubyDict()
au FileType scala      call AddScalaDict()
au FileType javascript call AddJavaScriptDict()
au FileType css        call AddCSSDict()

function AddCDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/c.txt
    else
        set dict+=~/.vim/dict/c.txt
    endif
    set complete+=k
endfunction

function AddCPPDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/c.txt
        set dict+=$VIM/vimfiles/dict/cpp-stdlib.txt
        set dict+=$VIM/vimfiles/dict/cpp-boost.txt
    else
        set dict+=~/.vim/dict/c.txt
        set dict+=~/.vim/dict/cpp-stdlib.txt
        set dict+=~/.vim/dict/cpp-boost.txt
    endif
    set complete+=k
endfunction

function AddJavaDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/java.txt
    else
        set dict+=~/.vim/dict/java.txt
    endif
    set complete+=k
endfunction

function AddLuaDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/lua.txt
    else
        set dict+=~/.vim/dict/lua.txt
    endif
    set complete+=k
endfunction

function AddPerlDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/perl.txt
    else
        set dict+=~/.vim/dict/perl.txt
    endif
    set complete+=k
endfunction

function AddPHPDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/php.txt
    else
        set dict+=~/.vim/dict/php.txt
    endif
    set complete+=k
endfunction

function AddPythonDict()
    if g:isWIN
        set dict+=$VIM/vimfiles/dict/python.txt
    else
        set dict+=~/.vim/dict/python.txt
    endif
    set complete+=k
endfunction

function AddRubyDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/ruby.txt
    else
        set dict+=~/.vim/dict/ruby.txt
    endif
    set complete+=k
endfunction

function AddScalaDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/scala.txt
    else
        set dict+=~/.vim/dict/scala.txt
    endif
    set complete+=k
endfunction

function AddJavaScriptDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/javascript.txt
        set dict+=$VIM/vimfiles/dict/node.txt
    else
        set dict+=~/.vim/dict/javascript.txt
        set dict+=~/.vim/dict/node.txt
    endif
    set complete+=k
endfunction

function AddCSSDict()
    if g:iswindows
        set dict+=$VIM/vimfiles/dict/css.txt
    else
        set dict+=~/.vim/dict/css.txt
    endif
    set complete+=k
endfunction


" 开启部分语法高亮的非默认特性
let g:cpp_class_scope_highlight           = 1               " 高亮C++ class scope
let g:cpp_experimental_template_highlight = 1               " 高亮C++ template functions

let g:go_auto_type_info                   = 0               " 关闭Go语言自动显示类型信息（默认就是关闭的，此处用于方便需要时开启）
let g:go_def_mapping_enabled              = 0               " 关闭Go语言对gd的绑定
let g:go_highlight_operators              = 1               " 开启Go语言操作符高亮
let g:go_highlight_functions              = 1               " 开启Go语言函数名高亮
let g:go_highlight_methods                = 1               " 开启Go语言方法名高亮
let g:go_highlight_structs                = 1               " 开启Go语言结构体名高亮

let g:haskell_enable_quantification       = 1               " 开启Haskell高亮 forall
let g:haskell_enable_recursivedo          = 1               " 开启Haskell高亮 mdo and rec
let g:haskell_enable_arrowsyntax          = 1               " 开启Haskell高亮 proc
let g:haskell_enable_pattern_synonyms     = 1               " 开启Haskell高亮 pattern
let g:haskell_enable_typeroles            = 1               " 开启Haskell高亮 type roles
let g:haskell_enable_static_pointers      = 1               " 开启Haskell高亮 static

let python_highlight_all                  = 1               " 打开全部Python高亮


" BufExplorer         文件缓冲浏览器
let g:bufExplorerSortBy = 'name'               " 按文件名排序

" Tlist               调用TagList
let Tlist_Show_One_File        = 1             " 只显示当前文件的tags
let Tlist_Exit_OnlyWindow      = 1             " 如果Taglist窗口是最后一个窗口则退出Vim
let Tlist_Use_Right_Window     = 1             " 在右侧窗口中显示
let Tlist_File_Fold_Auto_Close = 1             " 自动折叠

" snipMate            Tab智能补全
let g:snips_author = 'Ruchee'
if g:iswindows
    let g:snippets_dir = $VIM.'/snippets/'
else
    let g:snippets_dir = '~/.vim/snippets/'
endif
let g:snipMate                             = {}
" 不使用插件自带的默认继承
let g:snipMate.no_default_aliases          = 1
" 设置补全项之间的继承关系，比如 PHP补全继承HTML的补全
let g:snipMate.scope_aliases               = {}
let g:snipMate.scope_aliases['c']          = 'cpp,gtk'
let g:snipMate.scope_aliases['objc']       = 'objc,cpp'
let g:snipMate.scope_aliases['scheme']     = 'racket'
let g:snipMate.scope_aliases['php']        = 'php,html'
let g:snipMate.scope_aliases['typescript'] = 'typescript,javascript'
let g:snipMate.scope_aliases['scss']       = 'scss,css'
let g:snipMate.scope_aliases['less']       = 'less,css'
let g:snipMate.scope_aliases['xhtml']      = 'html'
let g:snipMate.scope_aliases['blade']      = 'blade,html'
let g:snipMate.scope_aliases['html.twig']  = 'twig,html'
let g:snipMate.scope_aliases['jinja.twig'] = 'twig,html'
let g:snipMate.scope_aliases['jinja']      = 'jinja,html'
let g:snipMate.scope_aliases['eruby']      = 'eruby,html'
let g:snipMate.scope_aliases['jst']        = 'jst,html'
let g:snipMate.scope_aliases['mustache']   = 'mustache,html'

" NERD_commenter      注释处理插件
let NERDSpaceDelims = 1                        " 自动添加前置空格

" Indent_guides       显示对齐线
let g:indent_guides_enable_on_vim_startup = 0  " 默认关闭
let g:indent_guides_guide_size            = 1  " 指定对齐线的尺寸

" {{{ matchit.zip 对%命令进行扩展使得能在嵌套标签和语句之间跳转
" % 正向匹配      g% 反向匹配
" [% 定位块首     ]% 定位块尾
"}}}

" {{{ MatchTag HTML标签高亮配对
" }}}

" {{{ asins/renamer.vim 文件重命名
" :Renamer 将当前文件所在文件夹下的内容显示在一个新窗口
" :Ren 开始重命名
"}}}

" AirLine             彩色状态栏
"let g:airline_theme = 'badwolf'                " 设置主题
let g:airline_theme = 'solarized'                " 设置主题
set ttimeoutlen=50
let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:airline_powerline_fonts = 0
let g:airline#extensions#whitespace#enabled = 0
let g:airline#extensions#branch#enabled = 1
let g:airline#extensions#syntastic#enabled = 0
let g:airline#extensions#tagbar#enabled = 1
let g:airline#extensions#csv#enabled = 0
let g:airline#extensions#hunks#enabled = 0
let g:airline#extensions#virtualenv#enabled = 1

let g:airline_theme_patch_func = 'AirlineThemePatch'
function! AirlineThemePatch(palette)
    if g:airline_theme == 'badwolf'
        for colors in values(a:palette.inactive)
            let colors[3] = 235
        endfor
    endif
endfunction

let g:Powerline_symbols = 'fancy'
set guifont=Monaco\  10,DejaVu\ Sans\ Mono\ for\ Powerline\ 11 "config font for gvim ”for gvim
set encoding=utf-8

" Promptline          终端辅助工具
let g:promptline_powerline_symbols = 0         " 关闭特殊符号
let g:promptline_preset = {
        \'a'    : [ '\u' ],
        \'b'    : [ promptline#slices#cwd() ],
        \'c'    : [ promptline#slices#vcs_branch(), promptline#slices#git_status() ],
        \'warn' : [ promptline#slices#last_exit_code() ]
        \}                                     " 自定义命令行显示

" GitGutter           Git辅助插件
let g:gitgutter_enabled               = 0      " 默认不开启
let g:gitgutter_signs                 = 0      " 默认不开启提示
let g:gitgutter_highlight_lines       = 0      " 默认不高亮行
let g:gitgutter_sign_added            = '+'    " 自定义新增指示符
let g:gitgutter_sign_modified         = '>'    " 自定义修改指示符
let g:gitgutter_sign_removed          = '-'    " 自定义删除指示符
let g:gitgutter_sign_modified_removed = '->'   " 自定义既修改又删除指示符


" Syntastic           语法检查
let g:syntastic_check_on_open = 1              " 默认开启
let g:syntastic_mode_map      = {'mode': 'active',
            \'active_filetypes':  [],
            \'passive_filetypes': ['html', 'css', 'xhtml', 'go', 'groovy', 'scala', 'clojure', 'racket', 'typescript', 'eruby', 'slim', 'jade', 'scss', 'less']
            \}                                 " 指定不需要检查的语言 [主要是因为开启这些语言的语法检查会妨碍到正常的工作]
" 自定义编译器和编译参数
let g:syntastic_c_compiler = 'gcc'
let g:syntastic_cpp_compiler = 'g++'
let g:syntastic_c_compiler_options = '-std=c11 -Wall'
let g:syntastic_cpp_compiler_options = '-std=c++14 -Wall'

" javascript-libraries-syntax                    指定需要高亮的JS库
let g:used_javascript_libs = 'jquery,requirejs,backbone,underscore,prelude,angularjs,angularui,react'


" ======= 自定义快捷键 ======= "

" Ctrl + ]            tags选择性跳转
nmap <c-]> g<c-]>
vmap <c-]> g<c-]>

" Ctrl + H            光标移当前行行首[插入模式]、切换左窗口[Normal模式]
imap <c-h> <ESC>I
map <c-h> <c-w><c-h>

" Ctrl + J            光标移下一行行首[插入模式]、切换下窗口[Normal模式]
imap <c-j> <ESC><Down>I
map <c-j> <c-w><c-j>

" Ctrl + K            光标移上一行行尾[插入模式]、切换上窗口[Normal模式]
imap <c-k> <ESC><Up>A
map <c-k> <c-w><c-k>

" Ctrl + L            光标移当前行行尾[插入模式]、切换右窗口[Normal模式]
imap <c-l> <ESC>A
map <c-l> <c-w><c-l>

" Alt  + H            光标左移一格
imap <m-h> <Left>

" Alt  + J            光标下移一格
imap <m-j> <Down>

" Alt  + K            光标上移一格
imap <m-k> <Up>

" Alt  + L            光标右移一格
imap <m-l> <Right>

" \c                  复制至公共剪贴板
vmap <leader>c "+y

" \a                  复制所有至公共剪贴板
nmap <leader>a <ESC>ggVG"+y<ESC>

" \v                  从公共剪贴板粘贴
imap <leader>v <ESC>"+p
nmap <leader>v "+p
vmap <leader>v "+p

" \bb                 按=号对齐代码 [Tabular插件]
nmap <leader>bb :Tab /=<CR>

" \bn                 自定义对齐    [Tabular插件]
nmap <leader>bn :Tab /

" \nt                 打开NERDTree窗口，在左侧栏显示
nmap <leader>nt :NERDTree<CR>

" \tl                 打开Taglist/TxtBrowser窗口，在右侧栏显示
nmap <leader>tl :Tlist<CR><c-w><c-l>

" \fe                 打开文件编码窗口，在右侧栏显示 [FencView插件]
nmap <leader>fe :FencView<CR>

" \ff                 打开文件搜索窗口，在最下方显示 [CtrlP插件]
nmap <leader>ff :CtrlPMixed<CR>

" \mp                 生成Promptline脚本文件，用于个性化终端操作 [Promptline插件 ]
nmap <leader>mp :!rm ~/.promptline<CR><ESC>:PromptlineSnapshot ~/.promptline airline<CR>

" \gi                 开启或关闭GitGutter [GitGutter插件]
nmap <leader>gi :GitGutterToggle<CR>:GitGutterSignsToggle<CR>:GitGutterLineHighlightsToggle<CR>

" \gd                 打开Git文件对比模式 [竖直] [GitGutter插件]
nmap <leader>gd :Gdiff<CR>

" \gs                 打开Git文件对比模式 [水平] [GitGutter插件]
nmap <leader>gs :Gsdiff<CR>

" \rb                 一键去除所有尾部空白
imap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
nmap <leader>rb :let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>
vmap <leader>rb <ESC>:let _s=@/<Bar>:%s/\s\+$//e<Bar>:let @/=_s<Bar>:nohl<CR>

" \rm                 一键去除字符
imap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>
nmap <leader>rm :%s/<c-v><c-m>//g<CR>
vmap <leader>rm <ESC>:%s/<c-v><c-m>//g<CR>

" \rt                 一键替换全部Tab为空格
func! RemoveTabs()
    if &shiftwidth == 2
        exec "%s/	/  /g"
    elseif &shiftwidth == 4
        exec "%s/	/    /g"
    elseif &shiftwidth == 6
        exec "%s/	/      /g"
    elseif &shiftwidth == 8
        exec "%s/	/        /g"
    else
        exec "%s/	/ /g"
    end
endfunc

imap <leader>rt <ESC>:call RemoveTabs()<CR>
nmap <leader>rt :call RemoveTabs()<CR>
vmap <leader>rt <ESC>:call RemoveTabs()<CR>

" \th                 一键生成与当前编辑文件同名的HTML文件 [不输出行号]
imap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>
nmap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>
vmap <leader>th <ESC>:set nonumber<CR>:set norelativenumber<CR><ESC>:TOhtml<CR><ESC>:w %:r.html<CR><ESC>:q<CR>:set number<CR>:set relativenumber<CR>

" \wa                 一键编译所有Vimwiki源文件
imap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>
nmap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>
vmap <leader>wa <ESC>\ww<ESC>:VimwikiAll2HTML<CR>:qa<CR>

" \ev                 编辑当前所使用的Vim配置文件
nmap <leader>ev <ESC>:e $MYVIMRC<CR>

" \php                一键切换到PHP语法高亮
imap <leader>php <ESC>:se ft=php<CR>li
nmap <leader>php <ESC>:se ft=php<CR>

" \js                 一键切换到JavaScript语法高亮
imap <leader>js <ESC>:se ft=javascript<CR>li
nmap <leader>js <ESC>:se ft=javascript<CR>

" \css                一键切换到CSS语法高亮
imap <leader>css <ESC>:se ft=css<CR>li
nmap <leader>css <ESC>:se ft=css<CR>

" \html               一键切换到HTML语法高亮
imap <leader>html <ESC>:se ft=html<CR>li
nmap <leader>html <ESC>:se ft=html<CR>


" ======= 编译 && 运行 && 模板 ======= "

" 编译并运行
func! Compile_Run_Code()
    exec "w"
    if &filetype == "c"
        if g:iswindows
            exec "!gcc -Wall -std=c11 -o %:r %:t && %:r.exe"
        else
            exec "!clang -Wall -std=c11 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "cpp"
        if g:iswindows
            exec "!g++ -Wall -std=c++14 -o %:r %:t && %:r.exe"
        else
            exec "!clang++ -Wall -std=c++14 -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "d"
        if g:iswindows
            exec "!dmd -wi %:t && del %:r.obj && %:r.exe"
        elseif g:iswindows
            exec "!dmd -wi %:t && rm %:r.o && ./%:r"
        else
            exec "!gdc -Wall -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "go"
        exec "!go run %:t"
    elseif &filetype == "rust"
        if g:iswindows
            exec "!rustc %:t && %:r.exe"
        else
            exec "!rustc %:t && ./%:r"
        endif
    elseif &filetype == "swift"
        exec "!swift %:t"
    elseif &filetype == "java"
        exec "!javac %:t && java %:r"
    elseif &filetype == "groovy"
        exec "!groovy %:t"
    elseif &filetype == "kotlin"
        exec "!kotlinc-jvm %:t -include-runtime -d %:r.jar && java -jar %:r.jar"
    elseif &filetype == "scala"
        exec "!scala %:t"
    elseif &filetype == "clojure"
        exec "!clojure -i %:t"
    elseif &filetype == "cs"
        if g:iswindows
            exec "!csc %:t && %:r.exe"
        else
            exec "!mcs %:t && mono %:r.exe"
        endif
    elseif &filetype == "fsharp"
        if g:iswindows
            exec "!fsc %:t && %:r.exe"
        else
            exec "!fsharpc %:t && ./%:r"
        endif
    elseif &filetype == "scheme"
        exec "!guile -l %:t"
    elseif &filetype == "racket"
        exec "!racket -fi %:t"
    elseif &filetype == "lisp"
        if g:iswindows
            exec "!ccl -l %:t"
        else
            exec "!clisp -i %:t"
        endif
    elseif &filetype == "ocaml"
        if g:iswindows
            exec "!ocamlc -o %:r.exe %:t && %:r.exe"
        else
            exec "!ocamlc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "haskell"
        if g:iswindows
            exec "!ghc -o %:r %:t && %:r.exe"
        else
            exec "!ghc -o %:r %:t && ./%:r"
        endif
    elseif &filetype == "lua"
        exec "!lua %:t"
    elseif &filetype == "perl"
        exec "!perl %:t"
    elseif &filetype == "php"
        exec "!php %:t"
    elseif &filetype == "python"
        exec "!python %:t"
    elseif &filetype == "ruby"
        exec "!ruby %:t"
    elseif &filetype == "elixir"
        exec "!elixir %:t"
    elseif &filetype == "julia"
        exec "!julia %:t"
    elseif &filetype == "dart"
        exec "!dart %:t"
    elseif &filetype == "haxe"
        exec "!haxe -main %:r --interp"
    elseif &filetype == "io"
        exec "!io %:t"
    elseif &filetype == "r"
        exec "!Rscript %:t"
    elseif &filetype == "coffee"
        exec "!coffee -c %:t && node %:r.js"
    elseif &filetype == "typescript"
        exec "!tsc %:t && node %:r.js"
    elseif &filetype == "ls"
        exec "!lsc -c %:t && node %:r.js"
    elseif &filetype == "javascript"
        exec "!node %:t"
    elseif &filetype == "sh"
        exec "!bash %:t"
    endif
endfunc

" \rr        一键保存、编译、运行
imap <leader>rr <ESC>:call Compile_Run_Code()<CR>
nmap <leader>rr :call Compile_Run_Code()<CR>
vmap <leader>rr <ESC>:call Compile_Run_Code()<CR>


" ======= Vimwiki ======= "

let g:vimwiki_w32_dir_enc     = 'utf-8' " 设置编码
let g:vimwiki_use_mouse       = 1       " 使用鼠标映射
" 声明可以在 wiki 里面使用的 HTML 标签
let g:vimwiki_valid_html_tags = 'p,a,img,b,i,s,u,sub,sup,br,hr,div,del,code,red,center,left,right,h1,h2,h3,h4,h5,h6,pre,code,script,style,span'

let blog = {}
if g:atCompany
    if g:iswindows
        let blog.path          = 'D:/Ruchee/Files/mysite/wiki/'
        let blog.path_html     = 'D:/Ruchee/Files/mysite/html/'
        let blog.template_path = 'D:/Ruchee/Files/mysite/templates/'
    endif
else
    if g:iswindows
        let blog.path          = 'D:/Ruchee/Files/mysite/wiki/'
        let blog.path_html     = 'D:/Ruchee/Files/mysite/html/'
        let blog.template_path = 'D:/Ruchee/Files/mysite/templates/'
    else
        let blog.path          = '~/mysite/wiki/'
        let blog.path_html     = '~/mysite/html/'
        let blog.template_path = '~/mysite/templates/'
    endif
endif
let blog.template_default = 'site'
let blog.template_ext     = '.html'
let blog.auto_export      = 1

" 声明可以在 wiki 里面高亮的程序语言，键为调用名，值为该语言在 Vim 里面实际的语法名
let blog.nested_syntaxes  = {'Asm': 'asm', 'Clang': 'c', 'C++': 'cpp', 'Objc': 'objc', 'Dlang': 'd', 'Go': 'go', 'Rust': 'rust', 'Swift': 'swift', 'Java': 'java', 'Groovy': 'groovy', 'Scala': 'scala', 'Clojure': 'clojure', 'C#': 'cs', 'F#': 'fsharp', 'Erlang': 'erlang', 'Scheme': 'scheme', 'Racket': 'racket', 'Lisp': 'lisp', 'Ocaml': 'ocaml', 'Haskell': 'haskell', 'Lua': 'lua', 'Perl': 'perl', 'PHP': 'php', 'Python': 'python', 'Ruby': 'ruby', 'Elixir': 'elixir', 'Julia': 'julia', 'Dart': 'dart', 'Haxe': 'haxe', 'Io': 'io', 'Rlang': 'r', 'Coffee': 'coffee', 'TypeScript': 'typescript', 'LiveScript': 'ls', 'JavaScript': 'javascript', 'Bash': 'sh', 'Sed': 'sed', 'Bat': 'dosbatch', 'Ini': 'dosini', 'HTML': 'html', 'CSS': 'css', 'Apache': 'apache', 'Nginx': 'nginx', 'Make': 'make'}

let g:vimwiki_list = [blog]
