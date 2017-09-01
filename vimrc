function! SourceFiles()
  return ['settings', 'plugins', 'mappings', 'autocommands', 'visual']
endfunction

for file in map(SourceFiles(), '"~/.vimrc." . (v:val)')
  exec('source ' . file)
endfor
