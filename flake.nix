{
  description = "Flake for all configurations";

  inputs = {
    #Required

    nixpkgs.url = "github:NixOS/nixpkgs/nixpkgs-unstable";

    nix-darwin = {
      url = "github:nix-darwin/nix-darwin/master";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    nix-homebrew = {
      url = "github:zhaofengli/nix-homebrew";
    };

    homebrew-core = {
      url = "github:homebrew/homebrew-core";
      flake = false;
    };

    homebrew-cask = {
      url = "github:homebrew/homebrew-cask";
      flake = false;
    };

    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    #Used programs

    nixvim = {
      url = "github:nix-community/nixvim";
    };

    zen-browser = {
      url = "github:0xc000022070/zen-browser-flake";
      inputs = {
        nixpkgs.follows = "nixpkgs";
        home-manager.follows = "home-manager";
      };
    };

    nixcord = {
      url = "github:FlameFlag/nixcord";
    };

    nix-ai = {
      url = "github:dryvist/nix-ai";
      inputs.nixpkgs.follows = "nixpkgs";
      inputs.home-manager.follows = "home-manager";
    };
  };

  outputs = inputs @ {
    self,
    nixpkgs,
    nixvim,
    nix-darwin,
    home-manager,
    nix-homebrew,
    homebrew-cask,
    homebrew-core,
    ...
  }: let
    username = "day";
  in {
    darwinConfigurations = {
      Grace = nix-darwin.lib.darwinSystem {
        modules = [
          ./hosts/Grace/configuration.nix
          home-manager.darwinModules.home-manager
          {
	nixpkgs.hostPlatform = "aarch64-darwin";
            home-manager = {
              useGlobalPkgs = true;
              useUserPackages = true;
              users."${username}" = import ./hosts/Grace/home.nix;
              backupFileExtension = "backup"; #Since using outOfStoreSymlink
              extraSpecialArgs = {
                inherit self username inputs;
              };
            };
          }
        ];
        specialArgs = {
          username = "${username}";
          inherit inputs self;
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
