{ ... }:
{
  programs.nixcord.vesktop = {
    enable = true;
  };

  imports = [
    ../shared/theme.nix
  ];
}
