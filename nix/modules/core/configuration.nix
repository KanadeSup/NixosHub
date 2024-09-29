{
  nix.settings.experimental-features = [ "nix-command" "flakes" ];
  nix.channel.enable = false;
  system.stateVersion = "24.05";
}
