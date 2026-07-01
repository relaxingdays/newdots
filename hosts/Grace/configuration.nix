{ username, pkgs, ... }:
{
	nix.settings.experimental-features = ["nix-command flakes"];
	system.stateVersion = 5;
  system.primaryUser = "${username}";
	users.users."${username}" = {
		home = "/Users/${username}";
	};
  imports = [
    ./modules/system
    ./modules/packages.nix
    ./modules/fish.nix
    ../../shared-modules/aerospace
    ./modules/homebrew
  ];
}
