if status is-interactive
    # Commands to run in interactive sessions can go here
end
fish_add_path /usr/local/sbin
status --is-interactive; and rbenv init - fish | source
