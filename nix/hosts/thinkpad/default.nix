{ pkgs, ... }: 

{
  imports = [
    ../../modules/core
    ./hardware
  ];

  # # System
  boot.loader = {
    systemd-boot.enable = true;
    efi.canTouchEfiVariables = true;
    timeout = 2;
  };

  # Dedicated packages
  environment.systemPackages = with pkgs;
    import ../../modules/core/packages.nix pkgs ++
    [

    ];
}
