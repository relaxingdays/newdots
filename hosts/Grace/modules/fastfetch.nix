{ pkgs, ... }:
{
  programs.fastfetch = {
    enable = true;
    package = pkgs.fastfetch.override {
      imageSupport = true;
    };

    settings = {
      logo = {
        source = "${pkgs.nixos-icons}/share/icons/hicolor/256x256/apps/nix-snowflake.png";
        type = "kitty-direct";
        width = 30;
        height = 15;
        padding = {
          top = 1;
          right = 2;
        };
      };

      display = {
        color = "blue";
        separator = " 󰁔 ";
      };

      modules = [
        "title"
        "seperator"
        "uptime"
        "packages"
        "colors"
      ];

    };
  };
}
