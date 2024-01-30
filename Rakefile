require 'rake'

desc "install the dot files into user's home directory"
task :install do
  FileUtils.mkdir_p("#{Dir.home}/.git_template/hooks") unless Dir.exist?('~/.git_template')
  FileUtils.mkdir_p("#{Dir.home}/.vim/UltiSnips") unless Dir.exist?('~/.vim')
  FileUtils.mkdir_p("#{Dir.home}/.tmuxinator") unless Dir.exist?('~/.tmuxinator')
  FileUtils.mkdir_p("#{Dir.home}/.rails") unless Dir.exist?('~/.rails')

  install_files(dotfiles)
  install_files(snippets)
  install_files(tmuxinator_files)
  install_files(git_template_files)
  install_files(rails_template_files)
end

desc "clear out dotfiles from user's home directory"
task :uninstall do
  uninstall(dotfiles)
  system %Q{rm -rf ~/.vim/UltiSnips/}
  system %Q{rm -rf ~/.tmuxinator/}
  system %Q{rm -rf ~/.git_template/hooks/}
  system %Q{rm -rf ~/.rails/}
end

def dotfiles
  Dir.glob('*').select do |file|
    File.file?(file)
  end - %w[Rakefile README.md setup.sh tags]
end

def snippets
  Dir.glob('vim/UltiSnips/*')
end

def tmuxinator_files
  Dir.glob('tmuxinator/*')
end

def git_template_files
  Dir.glob('git_template/hooks/*')
end

def rails_template_files
  Dir.glob('rails/*')
end

def install_files(files)
  replace_all = false

  files.sort.each do |file|
    filename = File.join(ENV['HOME'], ".#{file}")
    if File.exist?(filename)
      unless File.symlink?(filename)
        if replace_all
          replace_file(file)
        else
          print "overwrite ~/.#{file}? [ynaq] "
          case $stdin.gets.chomp
          when 'a'
            replace_all = true
            replace_file(file)
          when 'y'
            replace_file(file)
          when 'q'
            exit
          else
            puts "skipping ~/.#{file}"
          end
        end
      end
    else
      link_file(file)
    end
  end
end

def uninstall(files)
  files.sort.each do |file|
    filename = File.join(ENV['HOME'], ".#{file}")
      if File.symlink?(filename)
        puts "unlinking #{filename}"
        File.unlink(filename)
    end
  end
end

def replace_file(file)
  system %Q{rm "$HOME/.#{file}"}
  link_file(file)
end

def link_file(file)
  puts "linking ~/.#{file}"
  system %Q{ln -s "$PWD/#{file}" "$HOME/.#{file}"}
end
