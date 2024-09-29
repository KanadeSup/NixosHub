{ ... }:
{
  nixpkgs.overlays = [
    (final: prev: {
      xorg = prev.xorg.overrideScope (xfinal: xprev:  {
	xinit = xprev.xinit.overrideAttrs (oldAttrs: {
	  postPatch =  ''
	    substituteInPlace startx.cpp --replace '$HOME/.serverauth.$$' '$XAUTHORITY'
	    cat startx.cpp
	  '';
	});
      });
    })
  ];
}
