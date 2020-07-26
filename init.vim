" Отключаем совместимость с Vi
set nocompatible
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
"                                   Plugins!
"                            Managed with vim-plug
"                     https://github.com/junegunn/vim-plug
""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Specify a directoy for plugins
" - For Neovim: stdpath('data') . '/plugged'
" - Avoid using standard Vim directory names like 'plugin'
call plug#begin('~/.vim/plugged')

" Общие
Plug 'tpope/vim-fugitive'
Plug 'jiangmiao/auto-pairs'
Plug 'itchyny/lightline.vim'
Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }

"HTML
Plug 'mattn/emmet-vim', { 'for': ['html', 'javascript'] }

"Themes
Plug 'altercation/vim-colors-solarized'
Plug 'morhetz/gruvbox'
Plug 'lifepillar/vim-solarized8'


" Initialize plugin system
call plug#end()
"-----------------------------------------------------------------------------
" Основные настройки

" Устанавливаем максимальную ширину абзаца
set textwidth=79
" Добавляем подсветку для визуального ограничения текста
set colorcolumn=80
let &colorcolumn=join(range(81,999),",")

" Перенос строк
set wrap
set showbreak=>>

" Настройки отступов
set tabstop=4
set shiftwidth=4

" Замена табуляции пробелами
set expandtab

" Включаем использование системного буфера для копирования и вставки  
set clipboard+=unnamed,unnamedplus

" Включаем умные отступы (например после {)
set autoindent
set smartindent

" Отключаем спикерфон
set noerrorbells
set novisualbell

" Показывать незавершённые команды в статус баре
set showcmd

" Кодировка текста по умолчанию
set termencoding=utf8

" Показ полосы с открытыми вкладками
set showtabline=2

" Показывать парные символы
set showmatch
set lines=50
set columns=140

" Автокомплит командной строки
set wildmenu

" Показывать положение курсора всё время
set ruler

" Отключаем создание .swap файла
set noswapfile

" Отключаем создание различных бекапфайлов
set nobackup

" Включаем показ номеров строк
set number

" Включаем подсветку строки в которой находится курсор
set cursorline
highlight CursorLine guibg=lightblue ctermbg=lightgray
highlight CursorLine term=none cterm=none

" Включаем подержку мыши 
set mouse=a
set mousemodel=popup

" Подсветка поиска
set hlsearch
" Включаем регистронезависимый поиск
set ignorecase
" Включаем умную зависимость от регистра 
" (в случае если в выражении есть ПРОПИСНЫЕ буквы ищет регистрозависимо)
set smartcase
" Включаем поиск по набору текста
set incsearch

" Удаление символов бэкспэйсом в Windows
set backspace=indent,eol,start

" enhanced command line completion
set wildmenu 

" Настройки темы оформления
colorscheme gruvbox
set background=dark

" Настройки lightline
let g:lightline={
            \'colorscheme': 'darcula',
            \'active':{
            \   'left': [ [ 'mode', 'paste' ],
            \             [ 'gitbranch', 'readonly', 'filename', 'modifed' ] ],
            \   'right': [ [ 'lineinfo' ],
            \              [ 'percent' ],
            \              [ 'fileformat', 'fileencoding', 'filetype' ]]
            \ },
            \ 'component_function': {
            \   'gitbranch': 'FugitiveHead'
            \ },
            \ }

" Отключает показ режима в командной строке
set noshowmode

"-----------------------------------------------------------------------------
" Переопределение клавиатуры Mappings

" Убираем подсветку предидущего поиска по Ctrl-l
nnoremap <C-L> :noh<CR><C-L>

" Открытие NERDTree по Ctrl-n
map <C-n> :NERDTreeToggle<CR><Paste>

" Перемещение и вызов команд без переключения между раскладками клавиатуры:
set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
