final: prev: {
  xorg.xinit = prev.xorg.xinit.overrideAttrs (oldAttrs: {
    patches = [ ''
      substituteInPlace bin/startx --replace "xserverauthfile" "xservertest"
    ''];
  });
}
