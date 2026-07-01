{ pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;

    enableFishIntegration = true;

    settings = {
      theme = "Vague";

      macos-titlebar-style = "hidden";
      font-size = 18;
      window-padding-x = 8;
      window-padding-y = 8;
      command = "${pkgs.fish}/bin/fish --login --interactive";
      scrollbar = "never";
    };
  };
}
