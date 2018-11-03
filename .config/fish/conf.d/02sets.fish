set -g fish_term24bit 1
set -g fish_color_autosuggestion A67D00
set -g theme_short_path yes

# Change the prompt text
set -g pure_symbol_prompt "»"
set -g pure_symbol_git_down_arrow "v"
set -g pure_symbol_git_up_arrow "^"
set -g pure_symbol_git_dirty "!"
set -g pure_symbol_horizontal_bar "_"

# Change the colors
set -g pure_color_blue (set_color blue)
set -g pure_color_cyan (set_color cyan)
set -g pure_color_gray (set_color magenta)
set -g pure_color_green (set_color green)
set -g pure_color_normal (set_color normal)
set -g pure_color_red (set_color red)
set -g pure_color_yellow (set_color yellow)

# Ch-g ange colors for username and host in SSH
# set -g pure_username_color $pure_color_yellow
# set -g pure_host_color $pure_color_green
# set -g pure_root_color $pure_color_red

# Change where the username and host is displayed
# 0 - end of prompt, default
# 1 - start of prompt
# Any other value defaults to the default behaviour
set -g pure_user_host_location 0

# Show exit code of last command as a separate prompt character. As described here: https://github.com/sindresorhus/pure/wiki#show-exit-code-of-last-command-as-a-separate-prompt-character
# 0 - single prompt character, default
# 1 - separate prompt character
# Any other value defaults to the default behaviour
set -g pure_separate_prompt_on_error 1

# Max execution time of a process before its run time is shown when it exits
set -g pure_command_max_exec_time 5

# spacefish
set -g SPACEFISH_RUBY_SHOW false
set -g SPACEFISH_HASKELL_SHOW false
set -g SPACEFISH_BATTERY_SHOW false
set -g SPACEFISH_CHAR_SYMBOL "»"
set -g SPACEFISH_HOST_SHOW false
set -g SPACEFISH_USER_SHOW false
set -g SPACEFISH_DIR_TRUNC 3
set -g SPACEFISH_PROMPT_SEPARATE_LINE false
set -g SPACEFISH_PROMPT_ADD_NEWLINE true
set -g SPACEFISH_PYENV_SHOW false

# fzf plugin key binding
fzf_key_bindings
