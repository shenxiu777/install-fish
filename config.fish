if status is-interactive
    # Commands to run in interactive sessions can go here
end

function l
    ls -lh $argv
end

function ll
    ls -alh $argv
end

set -x TIME_STYLE '+%Y-%m-%d %H:%M:%S'

function fish_user_key_bindings
    # ctrl-delete
    bind \e\[3\;5~ kill-word
    # ctrl-backspace
    bind \cH backward-kill-word
end
