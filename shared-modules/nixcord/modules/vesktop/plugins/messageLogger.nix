{ ... }:
{
  programs.nixcord.config.plugins.messageLogger = {
    enable = true;
    ignoreSelf = true;
    ignoreSelfEdits = true;
  };
}
