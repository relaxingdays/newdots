{
  config,
  username,
  inputs,
  lib,
  pkgs,
  ...
}: {
  imports = [
    ./hardware-configuration.nix
  ];

  boot.loader.grub.enable = true;
  boot.loader.grub.device = "nodev";
  boot.loader.grub.efiSupport = true;
  boot.loader.efi.canTouchEfiVariables = true;

  networking.hostName = "Love"; # Define your hostname.

  networking.networkmanager.enable = true;

  time.timeZone = "Asia/Singapore";

  services.pipewire = {
    enable = true;
    pulse.enable = true;
  };

  services.libinput.enable = true;
  services.displayManager.ly = {
    enable = true;
  };
  services.openssh.enable = true;
  users.users.${username} = {
    isNormalUser = true;
    extraGroups = ["wheel"];
    packages = with pkgs; [
      tree
    ];
  };

  programs.firefox.enable = true;
  nix.settings.experimental-features = ["nix-command flakes"];

  environment.systemPackages = with pkgs; [
    vim
    wget
  ];

  system.stateVersion = "25.11"; # Did you read the comment?
}
