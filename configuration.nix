{ config, pkgs, ... }: {
  imports = [ <sops-nix/modules/sops> ];

  # Some values to make nixos stop complaining:
  fileSystems."/" = {
    device = "/dev/sda";
    fsType = "ext4";
  };
  boot.loader.grub.device = "nodev";
  nixpkgs.localSystem.system = "x86_64-linux";
}
