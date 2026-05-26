{ pkgs, inputs, username, ... }:
{
	home = {
		username = "${username}";
		homeDirectory = "/Users/${username}";
		stateVersion = "25.11";
	};

	imports = [
		../../shared-modules/nixvim
		../../shared-modules/aerospace
	];
}
