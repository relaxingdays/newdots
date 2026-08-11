{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ripgrep
    fd
    t3code
    protonmail-desktop
    sioyek
    jdk8
    qbittorrent
    (nerd-fonts.jetbrains-mono)
  ];
}
