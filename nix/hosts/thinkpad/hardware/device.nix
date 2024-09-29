{ ... }:

{	
  services.libinput = {
    enable = true;
    touchpad = {
      accelSpeed = "0.3";
      tappingDragLock = false;
      naturalScrolling = true;
    };
  };
}
