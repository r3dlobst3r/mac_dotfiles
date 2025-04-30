function gl --wraps='git log' --wraps="git log --all --graph --pretty=format: '%C(magenta)%h %C(white) %an %ar%C(auto) %D%n%s%n'" --wraps="git log --graph --all --pretty=format:'%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n'" --description "alias gl git log --graph --all --pretty=format:'%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n'"
  git log --graph --all --pretty=format:'%C(magenta)%h %C(white) %an  %ar%C(blue)  %D%n%s%n' $argv
        
end
