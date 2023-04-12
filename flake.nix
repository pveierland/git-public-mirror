{
  description = "";
  inputs = {
    nixpkgs.url = "flake:nixpkgs/nixpkgs-unstable";
  };
  outputs = inputs:
    let
      flakeContext = {
        inherit inputs;
      };
    in
    {
      nixosModules = {
        default = import ./nixosModules/default.nix flakeContext;
      };
    };
}
