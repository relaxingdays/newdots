{ pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;

    settings = {
      theme = "Vague";

      font-size = 18;
    };
  };
}
