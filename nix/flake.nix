{
  description = "Nixos configuration";
  nixConfig = {
    
  };
  inputs = {
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
  };
  outputs = { self, nixpkgs, home-manager,  ... }@inputs: {
    overlays = import ./overlays {inherit inputs;};
    nixosConfigurations = {
      thinkpad = let
	username = "Kanade";
      in
      	nixpkgs.lib.nixosSystem {
	  system = "x86_64-linux";
	  modules = [
	    (import ./overlays)
	    ./hosts/thinkpad
	    ./users/${username}/nixos.nix

	    # Home manager setup
	    home-manager.nixosModules.home-manager
	    {
	      home-manager.useGlobalPkgs = true;
	      home-manager.useUserPackages = true;
	      home-manager.extraSpecialArgs = { inherit username; };
	      home-manager.users."${username}" = import ./users/${username}/home.nix;
	    }
	  ];
	};
    };
  };
}
