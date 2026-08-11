{ pkgs, inputs, username, ... }:
{
	home = {
		username = "${username}";
		homeDirectory = "/Users/${username}";
		stateVersion = "25.11";
    sessionVariables = {
      EDITOR = "nvim";
    };
	};

	imports = [
		../../shared-modules/nixvim
    ../../shared-modules/ghostty
    ../../shared-modules/fish
    ../../shared-modules/zen
    ../../shared-modules/git
    ../../shared-modules/tmux
    ../../shared-modules/emacs
    ../../shared-modules/nixcord
    #./modules/mullvad.nix
    ./modules/homepackages.nix
    ./modules/fastfetch.nix
	];
}
