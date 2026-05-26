{ ... }:
{
  programs.nixvim.enable = true;
	imports = [
		./modules/keymaps.nix
		./modules/options.nix
		./modules/lsp
		./modules/plugins/lualine.nix
		./modules/plugins/oil.nix
		./modules/plugins/treesitter.nix
	];
}
