# Настройки моего рабочего окружения 

В этом репозитории собраны конфикурации приложений и мои файлы настроек.
С его помощью можно быстро развернуть удобное(ну про крайней мере для меня)
окружение в котором присутствуют:

* zsh
* tmux
* vim
* nvim

Для начала стоит скопировать данный репозиторий в домашнюю дирректорию

```bash
git clone https://github.com/toyrik/dotfiles.git
```

## ZSH

Устанавливаем zsh:

```bash
sudo apt install -y zsh
```

Дополнительно рекомендуется установить oh-my-zsh:

```bash
sh -c "$(curl -fsSL https://raw.githubusercontent.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
```

делаем симлинк для .zshrc

```bash
ln -s dotfiles/.zshrc ~/.zshrc
```

## TMUX

Устанавливаем tmux:

```bash
sudo apt install -y tmux
```

Дополнительно рекомендуется установить Oh My Tmux:

```bash
cd
git clone https://github.com/gpakosz/.tmux.git
ln -s -f .tmux/.tmux.conf
```

делаем симлинк для .tmux.conf.local:

```bash
ln -s dotfiles/.tmux.conf.local
```

## Vim

Для vim, если не установлен - устанавливаем:

```bash
sudo apt install -y vim
```

делаем симлинк для .vimrc:

```bash
ln -s dotfiles/.vimrc
```

и устанавливаем Vundle:

```bash
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
```

запускаем `vim` и в командном режиме выполняем `:PluginInstall`

для получения Vim с начальной конфигурацией без использования плагинов можно
воспользоваться файлом `.vimrc_example`

## Nvim

В некоторых случаях простого Vim оказывается недостаточно (а может я просто не
умею его готовить) и тогда на помощь приходит Nvim. 
Для его установки:

```bash
sudo apt install -y neovim
```
Для того чтобы воспользоваться представленной конфигурацией сначала 
устанавливаем `vim-plug`:

```bash
sh -c 'curl -fLo "${XDG_DATA_HOME:-$HOME/.local/share}"/nvim/site/autoload/plug.vim --create-dirs \
       https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim'
```

И в дирректории `.config/nvim/` делаем симлинк для файла `init.vim`:

```bash
cd .config/nvim
ln -s ~/dotfiles/init.vim
```

После чего запускаем `nvim` и в командном режиме выполняем `:PlugInstall` 

