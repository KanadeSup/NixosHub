{ pkgs, ... }:

{
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      intel-media-driver # Using for video encoding/decoding
      intel-compute-runtime # Using for compute tasks
    ];
  };
}
