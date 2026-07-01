{ inputs, username, ... }:
{
  imports = [
    inputs.nix-homebrew.darwinModules.nix-homebrew
    ./casks.nix
    ./formulae.nix
  ];

  nix-homebrew = {
    enable = true;
    enableRosetta = true;
    user = "${username}";
    taps = {
      "homebrew/homebrew-core" = inputs.homebrew-core;
      "homebrew/homebrew-cask" = inputs.homebrew-cask;
    };

    mutableTaps = false;
    trust = {
      formulae = [ ];
      casks = [ ];
      commands = [ ];
      taps = [ ];
    };
  };
  homebrew = {
    enable = true;
    onActivation = {
      cleanup = "zap";
    };
  };
}
