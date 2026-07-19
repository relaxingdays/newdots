{ inputs, pkgs, config, self, ... }:
{
  nixpkgs.overlays = [ inputs.emacs-overlay.overlays.default ];
  programs.emacs = {
    enable = true;
    extraPackages = epkgs: with epkgs; [

    ];
  };
  xdg.configFile."emacs/".source = config.lib.file.mkOutOfStoreSymlink "${self}/shared-modules/emacs";
}
