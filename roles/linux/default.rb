define :yaourt do
  package = params[:name]
  execute "yaourt -S --noconfirm #{package}" do
    not_if "yaourt -Q #{package} || yaourt -Qg #{package}"
  end
end

include_recipe 'background'
include_recipe 'xmonad_screenshot'

# desktop apps
yaourt 'google-chrome'

# input method
yaourt 'ibus'
yaourt 'ibus-skk'
yaourt 'skk-jisyo'

# utils
yaourt 'bind-tools'
yaourt 'gtk-theme-arc'
yaourt 'htop'
yaourt 'time'
yaourt 'tmux'
yaourt 'trayer'
yaourt 'unrar'
yaourt 'vim'

# fonts
yaourt 'ttf-inconsolata'
yaourt 'ttf-migu'
yaourt 'adobe-source-sans-pro-fonts'

# development
yaourt 'mysql56'
yaourt 'nodejs'
yaourt 'npm'
