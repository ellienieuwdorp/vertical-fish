function __vertical_component_hostname -d "Print the hostname"
    # Options
    __vertical_util_set VERTICAL_HOSTNAME_COLOR  pink
    __vertical_util_set VERTICAL_HOSTNAME_PREFIX " "
    __vertical_util_set VERTICAL_HOSTNAME_SUFFIX " "

    if not set -q __fish_prompt_hostname
        set -g __fish_prompt_hostname (hostname)
     end

    set_color $VERTICAL_HOSTNAME_COLOR
    echo -ens $VERTICAL_HOSTNAME_PREFIX
    echo -ens "$__fish_prompt_hostname"
    echo -ens $VERTICAL_HOSTNAME_SUFFIX
    set_color $VERTICAL_COLOR_NORMAL
end