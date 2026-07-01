{ pkgs, ... }:
{
  programs.zen-browser.profiles.default.search = {
    force = true;
    default = "kagi";
    engines = {
      kagi = {
        name = "Kagi";
        urls = [
          {
            template = "https://kagi.com/search?q={searchTerms}";
            params = [
              {
                name = "query";
                value = "searchTerms";
              }
            ];
          }
        ];
        definedAliases = [ "@kagi" ];
      };
      mynixos = {
        name = "My NixOS";
        urls = [
          {
            template = "https://mynixos.com/search?q={searchTerms}";
            params = [
              {
                name = "query";
                value = "searchTerms";
              }
            ];
          }
        ];
        icon = "${pkgs.nixos-icons}/share/icons/hicolor/scalable/apps/nix-snowflake.svg";
        definedAliases = ["@nx"];
      };
      github = {
        name = "GitHub Search";
        urls = [
          {
            template = "https://github.com/search?q={searchTerms}";
          }
        ];
        definedAliases = ["@gh"];
      };
    };
  };
}
