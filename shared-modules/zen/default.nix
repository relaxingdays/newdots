{ inputs, ... }:
{
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
  };
  imports = [
    inputs.zen-browser.homeModules.beta
    ./modules/policies.nix
    ./modules/preferences.nix
    ./modules/search-engines.nix
    ./modules/extensions.nix
    ./modules/mods.nix
  ];
}
