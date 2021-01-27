# Просмотр дирректории
# ===
alias ll="ls -lah"              # Показать содержимое дирректории с читаемыми размерами
alias l.="ls -d .*"             # Показать только скрытые файлы и папки
alias lf="ls -p | grep -v /"    # Показать только файлы
alias ld="ls -d */"             # показать толко дирректории

# git
# ===
alias gco="git checkout"
alias gci="git commit"
alias gst="git status"
alias gbr="git branch"
alias ghist="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
# Просмотр git diff в командной строке подходит для небольших различий, 
# но мне нравится просматривать более крупные в редакторе с поддержкой различий.
# в данной ситуации используется nvim
alias gdf="git diff | nvim -R -"

# Подтверждение действий
# ===
alias mv="mv -iv"
alias cp="cp -iv"
alias ln="ln -iv"
alias rm="rm -riv"
alias rmf="sudo rm -rfiv"

# Сокращения
# ===
alias q="exit"
alias s="sudo"
alias c="clear"
alias a="clear && alias | less"  # Показать список алиасов

# Разработка
alias cept="./vendor/bin/codecept" # алиас вызова codecept
# alias php="/opt/lampp/bin/php" # алиас php для xampp
