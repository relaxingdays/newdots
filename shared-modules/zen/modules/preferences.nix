{ ... }:
{
  programs.zen-browser.policies = {
    Preferences = {
      "browser.startup.homepage" = {
        Value = "about:blank";
        Status = "locked";
      };
    };
  };
}
