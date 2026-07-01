{ self, pkgs, ... }:
{
  programs.fish.shellAliases = {
    ll = "ls -la";
    rebuild = if pkgs.stdenv.hostPlatform.isDarwin then
      ''sudo darwin-rebuild switch --flake ${toString self}#(hostname)''
    else
      ''sudo nixos-rebuild switch --flake ${toString self}#(hostname)'';
    vim = "nvim";
    vi = "nvim";
  };
}
