{ ... }:
{
  programs.nixcord.legcord = {
    enable = true;
    equicord.enable = true;
  };

  imports = [
    ./settings.nix
    ../shared/theme.nix
  ];
}
