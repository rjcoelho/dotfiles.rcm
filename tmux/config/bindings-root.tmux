# see https://github.com/kutsan/dotfiles/blob/master/.tmux/config/mappings/root.tmux

# unbind all default bindings (see 'tmux list-keys -T root')
#unbind-key -T root -a

# clear scrollback and buffer using 'ctrl-l'
bind-key -n C-l send-keys C-l \; send-keys -R \; clear-history

# enter copy mode using 'alt-v'
bind-key -n M-v copy-mode

# PANES {{
# switch panes using 'alt-arrow'
bind-key -n M-Left select-pane -L
bind-key -n M-Right select-pane -R
bind-key -n M-Up select-pane -U
bind-key -n M-Down select-pane -D

# resize panes using 'shift-arrow'
bind-key -n S-Down resize-pane -D 5
bind-key -n S-Up resize-pane -U 5
bind-key -n S-Left resize-pane -L 5
bind-key -n S-Right resize-pane -R 5

# toggle zoom using 'alt-z'
bind-key -n M-z resize-pane -Z

# toggle synchronized panes using 'ctrl+i'
bind-key -n C-i set synchronize-panes

# }}

# WINDOWS {{
# switch windows using 'shift-alt-left/right'
bind-key -n S-M-Left previous-window
bind-key -n S-M-Right next-window
# }}
