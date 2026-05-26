{ self, ... }:
{
  programs.fish.shellAliases = {
    ll = "ls -la";
    rebuild = "sudo nixos-rebuild switch --flake ${toString self}#(hostname)";
    vim = "nvim";
    vi = "nvim";
  };
}
