# http://www.joshstaiger.org/archives/2005/07/bash_profile_vs.html
# Use .bashrc to avoid having to maintain stuff in two places.
if [ -f ~/.bashrc ]; then
   source ~/.bashrc
fi