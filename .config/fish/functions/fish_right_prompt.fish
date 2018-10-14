function fish_right_prompt
# Defined in /home/mkarmona/.local/share/omf/themes/default/fish_right_prompt.fish @ line 1
# 	set_color $fish_color_autosuggestion ^/dev/null; or set_color 555
#   date "+%H:%M:%S"
#   set_color normal
if set -q VIRTUAL_ENV
    echo -n -s (set_color brwhite)(basename "$VIRTUAL_ENV")(set_color normal) " "
end
end

