{ ... }:
{
  programs.fish.enable = true;
  imports = [
    ./shellAliases.nix
  ];
}
