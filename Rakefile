require 'rake'

desc "install the dot files into user's home directory"
task :install do
  install_files(dotfiles)
  install_files(snippets)
  install_files(tmuxinator_files)
end

def dotfiles
  Dir.glob('*').select do |file|
    File.file?(file)
  end - %w[Rakefile tags]
end

def snippets
  Dir.glob('vim/UltiSnips/*')
end

def tmuxinator_files
  Dir.glob('tmuxinator/*')
end

def install_files(files)
  replace_all = false

  files.sort.each do |file|
    if File.exist?(File.join(ENV['HOME'], ".#{file}"))
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
    else
      link_file(file)
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
