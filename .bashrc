# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

# Environment Variables
PS1=' \w \$ '

# Package manger
alias spi='sudo pkg install'
alias spd='sudo pkg delete'

# Git Clone
alias gcl='git clone'

# YouTube Downloader
alias ydl='youtube-dl'
alias ydl-aac="youtube-dl --extract-audio --audio-format aac "
alias ydl-best="youtube-dl --extract-audio --audio-format best "
alias ydl-flac="youtube-dl --extract-audio --audio-format flac "
alias ydl-m4a="youtube-dl --extract-audio --audio-format m4a "
alias ydl-mp3="youtube-dl --extract-audio --audio-format mp3 "
alias ydl-opus="youtube-dl --extract-audio --audio-format opus "
alias ydl-vorbis="youtube-dl --extract-audio --audio-format vorbis "
alias ydl-wav="youtube-dl --extract-audio --audio-format wav "
alias ydl-best="youtube-dl -f bestvideo+bestaudio "

# Use Make File
alias mci='sudo make clean install'

# Compile ncurses C code with LLVM
alias ncu='clang -lncurses'

# Run a freshly compiled binary
alias run='./a.out'

# Neofetch
alias neo='echo;neofetch'

# Power off
alias po='poweroff'

cd
