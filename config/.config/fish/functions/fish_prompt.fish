function fish_prompt
    set_color yellow
    echo -n ' '
    echo -n (whoami)
    set_color normal
    echo -n ' in '
    set_color $fish_color_cwd
    echo -n (prompt_pwd)
    set_color blue
    echo -n ' ~~> '
    set_color normal
end
