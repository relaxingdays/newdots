{
  description = "Flake for all configurations";

  inputs = {
    #Required

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #Used programs

    nixvim = {
      url = "github:nix-community/nixvim";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nixvim,
    nix-darwin,
    home-manager,
    ...
  }: let
    username = "cosoda";
  in {
    darwinConfigurations = {
      Grace = nix-darwin.lib.darwinSystem {
        modules = [
          ./hosts/Grace/configuration.nix
          home-manager.darwinModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users."${username}" = import ./hosts/Grace/home.nix;
              extraSpecialArgs = {
                inherit username inputs;
              };
            };
          }
        ];
        specialArgs = {
          username = "${username}";
        };
      };
    };
    nixosConfigurations = {
      Love = nixpkgs.lib.nixosSystem {
        system = "x86_64-Linux";
        modules = [
          ./hosts/Love/configuration.nix
          home-manager.nixosModules.home-manager
          {
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users."${username}" = import ./hosts/Love/home.nix;
              backupFileExtension = "backup"; #Since using outOfStoreSymlink
              extraSpecialArgs = {
                inherit username inputs;
              };
            };
          }
        ];
        specialArgs = {
          username = "${username}";
        };
      };
    };
  };
}
