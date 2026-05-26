{
  config,
  pkgs,
  username,
  inputs,
  ...
}: {
  home.username = "${username}";
  home.homeDirectory = "/home/${username}";
  home.stateVersion = "25.11";
  programs.bash.enable = true;
  imports = [
    inputs.nixvim.homeModules.nixvim
    ../../shared-modules/nixvim
    ../../shared-modules/ghcli
  ];
}
