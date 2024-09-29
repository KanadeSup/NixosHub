{ ... }:

{
  xresources = {
    properties = {
      "Xcursor.theme" = "Bibata-Modern-Ice";
      "Xcursor.size" = 30;
      "Xft.dpi" = 125;
    };
    path = ".config/x11/xresources";
  };

  home.file.".config/x11/xinitrc".text = ''
    xrdb -merge ~/.config/x11/xresources
    sxhkd &
    exec bspwm
  '';

  systemd.user.settings.Manager.DefaultEnvironment = {
    DISPLAY = ":0";
  };
}
