{ pkgs, ... }:
{
  programs.tmux = {
    enable = true;

    prefix = "C-Space";
    mouse = true;
    baseIndex = 1;
    terminal = "tmux-256color";

    extraConfig = ''
      # Change shell to fish
      set -g default-shell ${pkgs.fish}/bin/fish
      
      # Send prefix with C-a
      bind-key C-a send-prefix

      # Terminal overrides for true color
      set-option -g terminal-overrides ",xterm-256color:RGB"

      # Disable auto-rename
      set-option -g allow-rename off

      # Focus events
      set-option -g focus-events on

      # Disable pane sync by default
      set-window-option -g synchronize-panes off

      # Split panes (replacing " and %)
      unbind '"'
      unbind %
      bind l split-window -h
      bind h split-window -hb
      bind j split-window -v
      bind k split-window -vb

      # Alt-hjkl pane navigation
      bind -n C-h select-pane -L
      bind -n C-l select-pane -R
      bind -n C-k select-pane -U
      bind -n C-j select-pane -D

      # Status bar
      set-option -g status-style fg=white,bg=default
      set -g status-left "#[fg=#d8647e bold]#S"
      set-option -g status-right ""
      set-option -g status-keys vi
      set-option -g status-position top
      set-option -g status-justify centre
      set -g window-status-format "[#I] #W "
      set -g window-status-current-format "#[fg=#d8647e bold][#I] #W "

      set -g default-command "''${SHELL}"
      set -g set-clipboard on
    '';
  };
}
