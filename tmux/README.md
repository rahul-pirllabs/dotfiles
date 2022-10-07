# Tmux tips and tricks that i can remember 

## tmux basics
`tmux a`: attach to previous session (alais for `tmux attach`)

## Copy mode
<prefix> [: enter copy mode
<prefix> ]: paste in copy mode
q: exit copy mode

## Sessions 
<preifx> d: disconnect you from a session 
`tmux list-sessions`: these will show all your tmux sessions (`tmux ls`: this does the same thing)
`tmux attach -t <session name>`: this will attach to the target session
<prefix> $: rename session
`tmux new -s <session name>`: this will create a new session (Can create a session when i am already in a tmux session) (`tmux n -s <session name>`)
<prefix> s: this will show all the active sessions

## Panes
<predix> z: zoom into one pane (use prefix again to unzoom (toggle functionality))

### Splits
<prefix> ": horizontal split
<preifx> %: vertical split
<prefix> x: close pane (with conformation)
<C-d>: close a pane (without conformation)

### Movement in panes
<prefix> + vim_movement: custom remaps for vim movement 
<prefix> + ^: move to last 

## Windows

### create and kill windows
<prefix> c: create new window 
<prefix> &: kill a window 

### Window management
<prefix> ,: remame windows

### Window movement 
<prefix> p: move to previous window 
<prefix> m: move to next window
