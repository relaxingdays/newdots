{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ripgrep
    fd
    t3code
    protonmail-desktop
    jdk8
    jdk21
    (nerd-fonts.jetbrains-mono)
  ];
}
