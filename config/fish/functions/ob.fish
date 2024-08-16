function ob --wraps='cd "~/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/Personal"' --wraps='nvim "~/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/Personal"' --wraps='cd "/Users/manishprivet/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/Personal" && nvim .' --description 'alias ob=cd "/Users/manishprivet/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/Personal" && nvim .'
  cd "~/Library/Mobile Documents/com~apple~CloudDocs/Obsidian/Personal" && nvim . $argv
        
end
