{ ... }:
{
  system.defaults.CustomUserPreferences = {
    "com.apple.symbolichotkeys" = {
      AppleSymbolicHotKeys = {
        "64" = { #Spotlight Search
          enabled = true;
          value = {
            parameters = [ 114 15 524288 ];
            type = "standard";
          };
        };
        "60" = {
          enabled = false;
        };
        "61" = {
          enabled = false;
        };
      };
    };
    "com.apple.universalaccess" = {
      increaseContrast = true;
    };
  };
}
