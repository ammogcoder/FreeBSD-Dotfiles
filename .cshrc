# $FreeBSD: releng/12.0/share/skel/dot.cshrc 337497 2018-08-08 19:24:20Z asomers $
#
# .cshrc - csh resource script, read at beginning of execution by each shell
#
# see also csh(1), environ(7).
# more examples available at /usr/share/examples/csh/
#

alias h		history 25
alias j		jobs -l
alias la		ls -aF
alias lf		ls -FA
alias ll		ls -lAF
alias pi      	pkg install
alias pd     	pkg delete
alias gcl    	git clone

alias ydl    	youtube-dl'
alias ydl-aac	youtube-dl --extract-audio --audio-format aac
alias ydl-best	youtube-dl --extract-audio --audio-format best
alias ydl-flac	youtube-dl --extract-audio --audio-format flac 
alias ydl-m4a	youtube-dl --extract-audio --audio-format m4a 
alias ydl-mp3	youtube-dl --extract-audio --audio-format mp3 
alias ydl-opus	youtube-dl --extract-audio --audio-format opus 
alias ydl-vorbis	youtube-dl --extract-audio --audio-format vorbis 
alias ydl-wav	youtube-dl --extract-audio --audio-format wav
alias ydl-best	youtube-dl -f bestvideo+bestaudio

alias mci		sudo make clean install
alias ncu		clang -lncurses
alias run		./a.out
alias neo		echo;neofetch
alias po		poweroff

# These are normally set through /etc/login.conf.  You may override them here
# if wanted.
# set path = (/sbin /bin /usr/sbin /usr/bin /usr/local/sbin /usr/local/bin $HOME/bin)
# setenv	BLOCKSIZE	K
# A righteous umask
# umask 22

setenv	EDITOR	vi
setenv	PAGER	less

if ($?prompt) then
	# An interactive shell -- set some stuff up
	set prompt = "%N@%m:%~ %# "
	set promptchars = "%#"

	set filec
	set history = 1000
	set savehist = (1000 merge)
	set autolist = ambiguous
	# Use history to aid expansion
	set autoexpand
	set autorehash
	set mail = (/var/mail/$USER)
	if ( $?tcsh ) then
		bindkey "^W" backward-delete-word
		bindkey -k up history-search-backward
		bindkey -k down history-search-forward
	endif

endif
