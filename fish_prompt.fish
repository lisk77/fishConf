functions -e fish_right_prompt; function fish_prompt --description 'Write out the prompt'
    
    python3 ~/.config/fish/functions/parse.py    


    set -l cond (cat cond)
    set -l temp (cat temp)
        
    set -l time_color b3b3ff
    set -l x (date +"%T")
    set -l last_status $status
    set -l dir (pwd)
    set -l emoji '☁️ '

    set_color $time_color
    echo -n $x
    set_color normal
    echo -n ' '
    echo -n $temp
    echo -n $emoji
    echo -n ' '
    prompt_login 
    echo -n ' '
    set_color normal
    echo -n '|'
    echo -n ' '

    # PWD
    set_color $fish_color_cwd
    echo -n $dir
    set_color normal


    __terlar_git_prompt
    fish_hg_prompt
    echo

    if not test $last_status -eq 0
        set_color $fish_color_error
    end
    
    echo -n '➤ '
    set_color normal
end
