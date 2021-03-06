function fish_user_key_bindings
    ### fzy ###
    bind \cr 'fzy_select_history (commandline -b)'
    bind \cf 'fzy_select_directory'
    ### fzy ###
    ### pisces ###
    set -l _pisces_bind_mode default
    switch $fish_key_bindings
        case 'fish_vi_key_bindings' 'fish_hybrid_key_bindings'
            set _pisces_bind_mode insert
    end
    set -q pisces_pairs
    or set -U pisces_pairs '(,)' '[,]' '{,}' '","' "','"
    for pair in $pisces_pairs
        _pisces_bind_pair $_pisces_bind_mode (string split -- ',' $pair)
    end
    bind -M $_pisces_bind_mode \b _pisces_backspace
    bind -M $_pisces_bind_mode \177 _pisces_backspace
    bind -M $_pisces_bind_mode \t _pisces_complete
    ### pisces ###
end
