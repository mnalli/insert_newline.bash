
insert_newline() {
    local before="${READLINE_LINE:0:READLINE_POINT}"
    local after="${READLINE_LINE:READLINE_POINT:${#READLINE_LINE}}"

    READLINE_LINE="$before
$after"
    ((READLINE_POINT++))
}

# bind to Alt-Enter
bind -x '"\e\r": insert_newline'
