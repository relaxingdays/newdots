{ inputs, ... }:
{
  programs.nixvim.nixpkgs.useGlobalPackages = true;
  programs.nixvim.enable = true;
	imports = [
		inputs.nixvim.homeModules.nixvim
		./modules/keymaps.nix
    ./modules/colorscheme.nix
		./modules/options.nix
		./modules/lsp
		./modules/plugins/lualine.nix
    ./modules/plugins/harpoon.nix
		./modules/plugins/oil.nix
		./modules/plugins/treesitter.nix
    ./modules/plugins/telescope.nix
    ./modules/plugins/fugitive.nix
    ./modules/plugins/typst-preview.nix
    ./modules/plugins/extra-plugins.nix
    ./modules/plugins/mini-pairs.nix
	];
}
