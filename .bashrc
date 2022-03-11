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
export PATH="/usr/local/sbin:$PATH" # Recommendation from homebrew: homebrew's sbin was not found in your PATH but you have installed formulae that put executables in /usr/local/sbin.

export PATH="$PATH:/Applications/Postgres.app/Contents/Versions/latest/bin" # for postgres command line tools like psql, createdb, etc

# Uncomment to find MAMP's version of PHP before the system version
# export PATH=/Applications/MAMP/bin/php/php5.6.10/bin:$PATH
# export PATH=/Applications/MAMP/bin/php/php5.4.42/bin:$PATH

export PGHOST=localhost
export PGUSER=postgres

# Specifying -w will cause the subl command to not exit until the file is closed. - https://www.sublimetext.com/docs/2/osx_command_line.html
# This is needed because: http://stackoverflow.com/questions/33148753/ansible-vault-doesnt-save-changes-with-sublime-text
export EDITOR='subl -w'

# To prevent being asked for SSH Key password EVERY time anything wants to use it, after I upgraded to OSX Sierra
# see http://superuser.com/questions/1127067/macos-keeps-asking-my-ssh-passphrase-since-i-updated-to-sierra/1127520?noredirect=1#comment1615727_1127520
ssh-add -K ~/.ssh/id_rsa

source $HOME/.secrets

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
