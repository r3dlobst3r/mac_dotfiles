function vim -d 'Run neovim instead of vim if nvim is installed'
    if command -q nvim
        command nvim $argv
    else
        command vim $argv
    end
end   
