function fish_prompt
end # In case this file gets loaded non-interactively, e.g by conda
status is-interactive || exit

set_color normal | read -l color_normal
status fish-path | read -l fish_path