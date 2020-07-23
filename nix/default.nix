let sources = import ./sources.nix;
in { inherit (sources) nixpkgs nixus sops-nix; }
