function gc --wraps='git commmit' --wraps='git commit' --description 'alias gc git commit'
  git commit $argv
        
end
