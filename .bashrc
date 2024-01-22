# Take from https://github.com/mathiasbynens/dotfiles/blob/a8bd0d43007f3ea04dbb34dcbb064bb217f048df/.bash_profile
# Load the shell dotfiles, and then some:
# * ~/.path can be used to extend `$PATH`.
# * ~/.extra can be used for other settings you don’t want to commit.
for file in ~/.{path,prompt,exports,aliases,functions,extra}; do
	[ -r "$file" ] && [ -f "$file" ] && source "$file";
done;
unset file;

export PATH=$PATH:/usr/local/git/bin
export PATH=/usr/local/bin:$PATH
export PATH=$PATH:./node_modules/.bin # Add node modules bin path
export PATH="/usr/local/sbin:$PATH" # Recommendation from homebrew: homebrew's sbin was not found in your PATH but you have installed formulae that put executables in /usr/local/sbin.

export PGHOST=localhost
export PGUSER=postgres

# To prevent being asked for SSH Key password EVERY time anything wants to use it, after I upgraded to OSX Sierra
# see http://superuser.com/questions/1127067/macos-keeps-asking-my-ssh-passphrase-since-i-updated-to-sierra/1127520?noredirect=1#comment1615727_1127520
ssh-add -K ~/.ssh/id_rsa

source $HOME/.secrets

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
