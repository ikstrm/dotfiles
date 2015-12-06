node.reverse_merge!(
  brew_packages: [],
)

execute "install homebrew" do
  install_script_url = "https://raw.githubusercontent.com/Homebrew/install/master/install"

  not_if "which brew"
  command %Q[ruby -e $(curl -fsSL #{install_script_url})]
end

node[:brew_packages].each do |arg|
  name, *opts = arg.split(' ')
  package name do
    options opts.join(' ')
  end
end