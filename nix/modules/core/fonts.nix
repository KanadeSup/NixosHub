{ pkgs, ... }:

{
  fonts.packages = with pkgs; [
    # Essential fonts for website
    noto-fonts
    noto-fonts-cjk
    noto-fonts-emoji

    # My fonts
    (nerdfonts.override { fonts = [ "DejaVuSansMono" ]; })
  ];
}
