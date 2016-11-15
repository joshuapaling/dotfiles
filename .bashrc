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
export PATH=$PATH:~/.composer/vendor/bin
export PATH=./vendor/bin:$PATH # favour composer project-specific binaries over others
# export PATH=./bin:$PATH # so we can use bundle --binstubs # DELETE THIS IF NOTHING STUFFS UP
export PATH=$PATH:./node_modules/.bin # Add node modules bin path

# Uncomment to find MAMP's version of PHP before the system version
# export PATH=/Applications/MAMP/bin/php/php5.6.10/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.4.42/bin:$PATH

eval "$(rbenv init -)" # required for rbenv - https://github.com/sstephenson/rbenv#homebrew-on-mac-os-x

export PGHOST=localhost

# Specifying -w will cause the subl command to not exit until the file is closed. - https://www.sublimetext.com/docs/2/osx_command_line.html
# This is needed because: http://stackoverflow.com/questions/33148753/ansible-vault-doesnt-save-changes-with-sublime-text
export EDITOR='subl -w'

# for https://github.com/zimbatm/direnv#the-stdlib, so we don't have to prefix
# all commands with bin when using spring - https://github.com/rails/spring
eval "$(direnv hook $SHELL)"

# To prevent being asked for SSH Key password EVERY time anything wants to use it, after I upgraded to OSX Sierra
# see http://superuser.com/questions/1127067/macos-keeps-asking-my-ssh-passphrase-since-i-updated-to-sierra/1127520?noredirect=1#comment1615727_1127520
ssh-add -K ~/.ssh/id_rsa
