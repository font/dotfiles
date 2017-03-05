# Use ctrl-A as prefix key
unbind-key -n C-a
set -g prefix ^A
set -g prefix2 ^A
bind a send-prefix

# Enable Vi Mode
set-window-option -g mode-keys vi
bind -t vi-copy v begin-selection
bind -t vi-copy y copy-selection
#bind p paste-buffer

# Resize window to screen size of session you are attaching from
set-window-option -g aggressive-resize off

# Prevent auto renaming of windows
set-option -g allow-rename off

# Mouse mode
#set -g mode-mouse on
#set -g mouse-resize-pane on
#set -g mouse-select-pane on
#set -g mouse-select-window on

# Set history (default is 2000)
set-option -g history-limit 10000
