{ inputs, pkgs, ... }:
{
  inputs.nixpkgs.overlays = [ inputs.emacs-overlay.overlays.default ];
  programs.emacs = {
    enable = true;
    package = pkgs.emacsGit;
    extraPackages = epkgs: with epkgs; [

    ];
  };
  xdg.configFile."emacs/".source = ./emacs;
}
