{
  programs.zen-browser.policies = let
    mkExtensionSettings = builtins.mapAttrs (_: pluginId: {
      install_url = "https://addons.mozilla.org/firefox/downloads/latest/${pluginId}/latest.xpi";
      installation_mode = "force_installed";
    });
  in {
    ExtensionSettings = mkExtensionSettings {
      "{85860b32-02a8-431a-b2b1-40fbd64c9c69}" = "github-file-icons";
      "{446900e4-71c2-419f-a6a7-df9c091e268b}" = "bitwarden-password-manager";
      "uBlock0@raymondhill.net" = "ublock-origin";
      "search@kagi.com" = "kagi-search-for-firefox";
      "{21f1ba12-47e1-4a9b-ad4e-3a0260bbeb26}" = "remove-youtube-s-suggestions";


    };
  };
}
