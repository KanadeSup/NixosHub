{ pkgs, ... }:
{
  imports = [
    ./hardware-configuration.nix
    ./bluetooth.nix
    ./device.nix
    ./network.nix
    ./gpu.nix
  ];
}
