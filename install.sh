#!/usr/bin/env bash

user=k0kubun
repo=dotfiles
branch=master

tempdir=/tmp
archive=${tempdir}/${repo}.zip
workdir=${tempdir}/${repo}-${branch}

if [ ! -e $workdir ]; then
  # Fetch repository to /tmp/dotfiles-master
  echo -n "Fetching dotfiles repository..."
  curl -L -o $archive https://github.com/${user}/${repo}/archive/${branch}.zip 2> /dev/null
  unzip -o $archive -d $tempdir > /dev/null
  rm $archive
  echo " done."
fi

# Ensure ruby availability
if ! which ruby > /dev/null; then
  printf "\e[31mRuby is not available. Aborted.\e[m\n"
  exit 1
fi

# Ensure bundler availability
if ! which bundle > /dev/null; then
  if which ruby | grep -q rbenv; then
    gem install bundler
  else
    # For system ruby
    sudo gem install bundler
  fi
fi

# Execute itamae recipes
pushd $workdir > /dev/null
bundle install
./bootstrap.rb
popd > /dev/null
