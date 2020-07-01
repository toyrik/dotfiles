set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'

" The following are examples of different formats supported.
" Keep Plugin commands between vundle#begin/end.
" plugin on GitHub repo
"  Plugin 'tpope/vim-fugitive'
" plugin from http://vim-scripts.org/vim/scripts.html
" Plugin 'L9'
" Git plugin not hosted on GitHub
"  Plugin 'git://git.wincent.com/command-t.git'
" git repos on your local machine (i.e. when working on your own plugin)
"  Plugin 'file:///home/gmarik/path/to/plugin'
" The sparkup vim script is in a subdirectory of this repo called vim.
" Pass the path to set the runtimepath properly.
"  Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
" Install L9 and avoid a Naming conflict if you've already installed a
" different version somewhere else.
" Plugin 'ascenator/L9', {'name': 'newL9'}

Plugin 'tpope/vim-sensible'
Plugin 'ryanoasis/vim-devicons'
Plugin 'scrooloose/nerdtree'
Plugin 'junegunn/seoul256.vim'
Plugin 'kaicataldo/material.vim'
Plugin 'joshdick/onedark.vim'
" Plugin 'itchyny/lightline.vim'
Plugin 'vim-airline/vim-airline'
Plugin 'vim-airline/vim-airline-themes'
Plugin 'jiangmiao/auto-pairs'
Plugin 'mattn/emmet-vim'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

set textwidth=80        " Устанавливает максимальную ширину абзаца
set smartcase        " Поиск с использованием умного регистра
set number                                                     "Включает показ номеров строк
syntax on                                                      "Включает подсветку синтаксиса
set incsearch                                                  "Поиск по набору текста (очень полезная функция)
set hlsearch                                                   "Подсвечивание поиска
"    :nnoremap <esc>:noh <return> <esc>               "Убирает подсветку последнего поиска по нажатию Esc
set ignorecase                                                 "Умная зависимость 
set smartcase                                                  "от регистра %)
set termencoding=utf8                                          "Кодировка текста по умолчанию
set nocompatible                                               "Включить несовместимость настроек с Vi (ибо Vi нам и не понадобится)
set ruler                                                      "Показывать положение курсора всё время.
set showcmd                                                    "Показывать незавершённые команды в статусбаре
set foldenable                                                 "Фолдинг по отсупам
set foldlevel=100                                              " 
set foldmethod=indent                                          " 
set noerrorbells visualbell t_vb=                              "Выключаем надоедливый "звонок"
autocmd GUIEnter * set visualbell t_vb=                        " 
set mouse=a                                                    "Поддержка мыши
set mousemodel=popup                                           " 
set hidden                                                     "Не выгружать буфер, когда переключаемся на другой
                                                               "Это позволяет редактировать несколько файлов в один
                                                               "и тот же момент без необходимости сохранения каждый раз
                                                               "когда переключаешься между ними
set showtabline=2                                              "Показывать полоску с окрытыми вкладками
set guioptions-=T                                              "Скрыть панель в gui версии ибо она не нужна
set ch=1                                                       "Сделать строку команд высотой в одну строку
set mousehide                                                  "Скрывать указатель мыши, когда печатаем
set autoindent                                                 "Включить автоотступы
set wrap                                                       "Переносить строки
set expandtab                                                  "Преобразование Таба в пробелы
set shiftwidth=4                                               "Размер табуляции по умолчанию
set softtabstop=4                                              " 
set tabstop=4                                                  " 
set autoindent                                                 " 
" set statusline=%<%f%h%m%r\ %b\ %{&encoding}\ 0x\ \ %l,%c%V\ %P " Формат строки состояния
set laststatus=2                                               " 
set smartindent                                                " Включаем "умные" отступы ( например, авто отступ после {)
set showmatch                                                  " Отображение парных символов
set lines=50                                                   " 
set columns=140                                                " 
set iskeyword=@,48-57,_,192-255                                " Навигация с учетом русских символов
"частичное решение проблемы переключения раскладки
set langmap=ФИСВУАПРШОЛДЬТЩЗЙКЫЕГМЦЧНЯ;ABCDEFGHIJKLMNOPQRSTUVWXYZ,фисвуапршолдьтщзйкыегмцчня;abcdefghijklmnopqrstuvwxyz
set backspace=indent,eol,start                                 " Удаление символов бэкспэйсом в Windows
set cursorline
highlight CursorLine guibg=lightblue ctermbg=lightgray
highlight CursorLine term=none cterm=none
set history=200
set wildmenu
set list listchars=tab:→\ ,trail:·
map <C-n> :NERDTreeToggle<CR>
colorscheme onedark
set guifont=Fura\ Code\ Light\ Nerd\ Font\ Complete:h16 
    "устанавливаем цвет для lightline
" let g:lightline = {
"  \ 'colorscheme': 'onedark',
"  \ }

" настройки airline
let g:airline_theme='onedark'
let g:airline_powerline_fonts = 1 " Включение поддержки Powerline шрифтов
let g:airline#extensions#keymap#enablet = 0 " Не показывать текущий маппинг
let g:airline_section_z = "\ue0a1:%1/%l Col:%c" " Кастомная графа положения курсора
let g:Powerline_symbols='unicode' " Поддержка unicode
" let g:airline#extensions#xkblayout#enablet = 0 " 

let g:airline#extensions#tabline#enabled = 1
let g:airline_section_b = '%{strftime("%c")}'
let g:airline_section_y = 'BN: %{bufnr("%")}'
" let g:airline_left_sep = ''
" let g:airline_right_sep = ''
let g:airline_linecolumn_prefix = '¶ '
let g:airline_fugitive_prefix = '⎇ '
let g:airline_paste_symbol = 'ρ'
