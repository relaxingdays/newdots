{ ... }:
{
  programs.nixcord.config.plugins.callTimer = {
    enable = true;
    allCallTimers = true;
    showWithoutHover = true;
  };
}
