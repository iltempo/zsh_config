ROOT_PATH = File.expand_path(File.join(File.dirname(__FILE__)))

desc "Link zsh configuration files"
task :link_config_files do
  Dir['zshrc'].each do |file|
    dest = File.expand_path("~/.#{file}")
    unless File.exist?(dest)
      ln_s(File.expand_path(file), dest)
    end
  end
end

desc "Install plugins"
task :install_plugins do
  `git submodule init`
  `git submodule update`
end

desc "Update .zsh repository"
task :update do
  `git pull`
  `git submodule update`
end

desc "Install everything"
task :install => [:link_config_files,
                  :install_plugins]

desc "Update everything"
task :default => :update
