unbind C-b
set-option -g prefix C-a
bind-key C-a send-prefix

set -g status-style 'bg=#333333 fg=#6790EB'
set -sg escape-time 0
set -g status-right ''
set -g pane-border-style 'fg=#555555'
set -g pane-active-border-style 'fg=#6790EB'

set-option -g default-terminal "screen-256color"
set-window-option -g mode-keys vi
bind -T copy-mode-vi v send-keys -X begin-selection
bind -T copy-mode-vi y send-keys -X copy-pipe-and-cancel 'xclip -in -selection clipboard'

bind -r k select-pane -U
bind -r j select-pane -D
bind -r h select-pane -L
bind -r l select-pane -R
