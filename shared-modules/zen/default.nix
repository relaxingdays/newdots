{ inputs, ... }:
{
  programs.zen-browser = {
    enable = true;
    setAsDefaultBrowser = true;
    profiles.default.id = 0;
    profiles.work.id = 1;
    profiles.school.id = 2;
  };
  imports = [
    inputs.zen-browser.homeModules.beta
    ./modules/policies.nix
    ./modules/preferences.nix
    ./modules/search-engines.nix
    ./modules/extensions.nix
    ./modules/mods.nix
    ./modules/others.nix
  ];
}
