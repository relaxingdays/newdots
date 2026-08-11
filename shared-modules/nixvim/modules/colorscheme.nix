{ pkgs, ... }:
{
  programs.nixvim = {
    extraPlugins = [
      (pkgs.vimUtils.buildVimPlugin {
        pname = "compline-nvim";
        version = "unstable-2026-07-21";
        src = pkgs.fetchFromGitHub {
          owner = "joshuablais";
          repo = "compline";
          rev = "5c27b59b00a8352eece96b777a97c14d45e1f416";
          sha256 = "sha256-pUv6NkKgCItWx1FzwUuiI+swhTaEyPyKuVOl349icLk=";
        };
        sourceRoot = "source/nvim";
        # Upstream ships the Lua modules at the runtimepath root (compline/,
        # lauds/), but colors/*.lua do `require('compline.theme')`, which only
        # resolves under lua/. Relocate them so the require paths work.
        postPatch = ''
          mkdir -p lua
          mv compline lua/compline
          mv lauds lua/lauds
        '';
      })
    ];

    #colorschemes.vague.enable = true;
    colorscheme = "compline";
  };
}
