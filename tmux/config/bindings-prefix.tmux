# see https://github.com/kutsan/dotfiles/blob/master/.tmux/config/mappings/prefix.tmux

# unbind all default bindings (see 'tmux list-keys -T prefix')
#unbind-key -T prefix -a
unbind-key C-b

# bind 'C-Space C-Space' to send 'C-Space' 
bind-key C-Space send-prefix

# reload configuration using 'r'
bind-key r \
	source-file ~/.tmux.conf \; \
	display-message ' (!) ~/.tmux.conf reloaded.'

# PANES {{
# split panes using '-' and '\' (or '_' and '|')
bind-key - split-window -v -c '#{pane_current_path}'
bind-key \\ split-window -h -c '#{pane_current_path}'
bind-key _ split-window -fv -c '#{pane_current_path}' # full width
bind-key | split-window -fh -c '#{pane_current_path}' # full height

# move panes using '{' and '}' (same as defaults)
# kill panes using 'x' (same as  default)
# }}

# WINDOWS {{
# swap windows across themselves using '<' and '>'
bind-key -T prefix -r '<' swap-window -d -t -1
bind-key -T prefix -r '>' swap-window -d -t +1

# kill windows using '&' (same as default)
# make a new window using 'c' (same as default)
# launch command prompt using ':' (same as default)
# }}
