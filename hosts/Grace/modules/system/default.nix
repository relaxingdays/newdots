{ pkgs, ... }:

{
  imports = [
    ./ActivityMonitor.nix
    ./controlcenter.nix
    ./CustomUserPreferences.nix
    ./dock.nix
    ./finder.nix
    ./GlobalPreferences.nix
    ./hitoolbox.nix
    ./iCal.nix
    ./keyboard.nix
    ./LaunchServices.nix
    ./loginwindow.nix
    ./menuExtraClock.nix
    ./NSGlobalDomain.nix
    ./screencapture.nix
    ./screensaver.nix
    ./SoftwareUpdate.nix
    ./spaces.nix
    ./trackpad.nix
    ./universalaccess.nix
    ./WindowManager.nix
  ];
}

