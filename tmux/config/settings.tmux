# see https://github.com/kutsan/dotfiles/tree/master/.tmux/config/settings.tmux

# change prefix to ctrl+space
set-option -g prefix C-Space

# mouse support
set-option -g mouse on

# time in milliseconds for which tmux waits after an escape
set-option -g escape-time 0

# start window numbers at 1 to match keyboard order with tmux window order
set-option -g base-index 1
set-option -g pane-base-index 1

# start window numbers at 1 to match keyboard order with tmux window order
set-option -g base-index 1
set-option -g pane-base-index 1

# renumber windows sequentially after closing any of them
set-option -g renumber-windows on

# allow programs to change title using a escape sequence
set-option -g allow-rename on

# don't show "Activity in window X" messages.
set-option -g visual-activity off

# enable supported focus events
set-option -g focus-events on

# turn on automatic window renaming
set-option -g automatic-rename on
set-option -g automatic-rename-format '#{b:pane_current_path}'
set-option -g status-interval 5

# terminal overrides
set-option -g -a terminal-overrides ',xterm-256color:Tc' # True color support

# automatically rename tmux windows to the current directory
set-option -g automatic-rename-format '#{b:pane_current_path}'
set-option -g status-interval 5

# fix availability of pbcopy, pbpaste and other user-level services
if-shell 'test (uname) = "Darwin"' \
    'tmux set-option -g default-command "reattach-to-user-namespace -l $SHELL"'
