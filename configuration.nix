{ config, pkgs, ... }: {
  # This module can't be found - how can I import it such that it "counts"?
  imports = [ <sops-nix/modules/sops> ]; # <------ THIS

  # Some values to make nixos stop complaining:
  fileSystems."/" = {
    device = "/dev/sda";
    fsType = "ext4";
  };
  boot.loader.grub.device = "nodev";
  nixpkgs.localSystem.system = "x86_64-linux";
}
