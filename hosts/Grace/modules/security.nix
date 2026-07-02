{ ... }:
{
  security.pam.services.sudo_local = {
    enable = true;
    touchIdAuth = true;
    reattach = true;  # CRITICAL: enables Touch ID in tmux/screen
  };
}
