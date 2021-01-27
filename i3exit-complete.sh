#!/bin/bash


_i3exit_main () {

    local i=1 cmd

    local cur="${COMP_WORDS[COMP_CWORD]}"

    # find the subcommand - first word after the flags
    while [[ "$i" -lt "$COMP_CWORD" ]]
    do
        local s="${COMP_WORDS[i]}"
    
        case "$s" in
            lock | logout | reboot | shutdown | sleep)
            cmd="$s"
            break
            ;;
        esac
        (( i++ ))
    done

    if [[ "$i" -eq "$COMP_CWORD" ]]
    then

        COMPREPLY=($(compgen -W "lock logout reboot shutdown sleep" -- "$cur"))
        return # return early if we're still completing the 'current' command
    fi

    COMPREPLY=()
}




complete -F _i3exit_main i3exit
