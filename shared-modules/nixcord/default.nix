{ username, inputs, ... }:
{
  programs.nixcord = {
    enable = true;
    user = "${username}";
    discord.enable = false;
  };

  imports = [
    inputs.nixcord.homeModules.nixcord
    ./modules/vesktop
  ];
}
