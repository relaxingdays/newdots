{ pkgs, ... }:
{
  home.packages = with pkgs; [
    ripgrep
    fd
    t3code
  ];
}
