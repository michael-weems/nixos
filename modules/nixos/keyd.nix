{ config, pkgs, ...}: {
  environment.systemPackages = with pkgs; [
    keyd	
  ];

  # This setting is to turn CapsLock into Esc.
  # Don't forget to add `keyd` to the user packages above if you want to use it
  services.keyd = {
    enable = true;
    keyboards = {
      default = {
        ids = ["*"];
        settings = {
          main = {
            capslock = "overload(meta, esc)";
          };
        };
      };
    };
  };
}
