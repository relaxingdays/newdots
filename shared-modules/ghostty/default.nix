{ pkgs, ... }:
{
  programs.ghostty = {
    enable = true;
    package = pkgs.ghostty-bin;

    enableFishIntegration = true;

    settings = {
      theme = "compline";
      macos-titlebar-style = "hidden";
      font-family = "JetBrainsMono NFM Regular";
      font-size = 18;
      window-padding-x = 8;
      window-padding-y = 8;
      command = "${pkgs.fish}/bin/fish --login --interactive";
      scrollbar = "never";
    };
  };

  xdg.configFile."ghostty/themes" = {
    source = ./themes;
    recursive = true;
  };
}
