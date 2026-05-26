{ ... }:
{
  programs.git = {
    enable = true;
  };
  programs.gh = {
    enable = true;
    gitCredentialHelper = {
      enable = true;
      hosts = [ "github.com" "gist.github.com" ];
    };
  };
}
