{ pkgs, ... }:

{
  imports = [
    ./configuration.nix
    ./system.nix

    ./fonts.nix
    ./xserver.nix
    ./flatpak.nix
    ./security.nix
    ./services.nix
    ./shell.nix
    ./xdg.nix
  ];	

}
