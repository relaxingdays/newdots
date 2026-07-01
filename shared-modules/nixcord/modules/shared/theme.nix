{ ... }:
{
  programs.nixcord.config = {
    useQuickCss = false;
    themeLinks = [
      "https://raw.githubusercontent.com/refact0r/system24/refs/heads/main/theme/flavors/system24-tokyo-night.theme.css"
    ];
    frameless = true;
  };
}
