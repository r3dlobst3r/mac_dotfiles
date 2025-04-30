function gd --wraps="git diff --output-indicator-new=' ' --output-indicator-old=' '" --description "alias gd git diff --output-indicator-new=' ' --output-indicator-old=' '"
  git diff --output-indicator-new=' ' --output-indicator-old=' ' $argv
        
end
