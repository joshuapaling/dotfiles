# Take from https://github.com/mathiasbynens/dotfiles/blob/a8bd0d43007f3ea04dbb34dcbb064bb217f048df/.bash_profile
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export PATH=$PATH:/usr/local/git/bin
export PATH=/usr/local/bin:$PATH
# export PATH=./bin:$PATH # so we can use bundle --binstubs # DELETE THIS IF NOTHING STUFFS UP

# Find MAMP's version of PHP before the system version
export PATH=/Applications/MAMP/bin/php/php5.6.2/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.4.26/bin:$PATH

eval "$(rbenv init -)" # required for rbenv - https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x

export PGHOST=localhost

export EDITOR=subl

# for https://github.com/zimbatm/direnv#the-stdlib, so we don't have to prefix
# all commands with bin when using spring - https://github.com/rails/spring
eval "$(direnv hook $0)"