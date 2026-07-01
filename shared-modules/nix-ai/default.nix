{ inputs, ... }:
{
  imports = [
    inputs.nix-ai.homeManagerModules.default
    ./modules/claude
  ];
}
