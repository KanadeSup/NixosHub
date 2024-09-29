{ lib, ... }:

{
  services = {
    picom.enable = true;
    xserver = {
      enable = true;
      autoRepeatDelay = 290;
      autoRepeatInterval = 30;
      windowManager.bspwm.enable = true;
      displayManager.startx.enable = true;
      desktopManager.xterm.enable = false;
    };
  };
  environment.variables = lib.mkBefore {
    XINITRC=".config/x11/xinitrc";
    XAUTHORITY=".config/x11/xauthority";
    GIT_ASKPASS=""; # Prevent calling git ask pass during git authentication
  };
}
