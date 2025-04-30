function aicommit --wraps='ai --full-auto "generate a commit message and commit it"' --description 'alias aicommit=ai --full-auto "generate a commit message and commit it"'
  ai --full-auto "generate a commit message and commit it. Take the commit message inspiration from /Users/manishprivet/.config/git/template" $argv
        
end
