{ config, ... }:
{
  programs.sketchybar = {
    enable = true;
  };
  xdg.configFile."sketchybar".source = ./sketchybar;
}
