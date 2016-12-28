ROOT_PATH = File.expand_path(File.join(File.dirname(__FILE__)))

desc "Link zsh configuration files"
task :link_config_files do
  Dir['zshrc', 'hyper.js'].each do |file|
    dest = File.expand_path("~/.#{file}")
    unless File.exist?(dest)
      ln_s(File.expand_path(file), dest)
    end
  end
end

desc "Update .zsh repository"
task :update do
  `git pull`
end

desc "Install everything"
task :install => [:link_config_files]

desc "Update everything"
task :default => :update
