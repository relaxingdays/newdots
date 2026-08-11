{ ... }:
{
  programs.nixcord = {
    # Load the local Compline theme (recolored system24) via QuickCSS, since
    # nixcord only supports remote URLs through themeLinks. The file lives in
    # this module's assets/ directory.
    quickCss = builtins.readFile ../../assets/compline.theme.css;
    config = {
      useQuickCss = true;
      themeLinks = [ ];
      frameless = true;
    };
  };
}
