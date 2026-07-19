{ ... }:
{
  programs.nixcord.vesktop = {
    enable = true;
  };

  imports = [
    ../shared/theme.nix
    ./plugins/callTimer.nix
    ./plugins/expressionCloner.nix
    ./plugins/messageLogger.nix
  ];
}
