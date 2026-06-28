{ username, ... }:
{
	nix.settings.experimental-features = ["nix-command flakes"];
	system.stateVersion = 5;
	users.users."${username}" = {
		home = "/Users/${username}";
	};
}
