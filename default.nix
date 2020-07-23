{ pkgs ? null }:
let
  sources = import ./nix;
  nixus = import sources.nixus;
  nixpkgs = sources.nixpkgs;
in nixus ({ ... }: {
  defaults = { name, ... }: { nixpkgs = nixpkgs; };

  nodes.one-computer = { lib, config, ... }: {
    host = "localhost"; # I redacted this

    hasFastConnection = true;

    # What configuration it should have
    configuration = ./configuration.nix;
  };
})
