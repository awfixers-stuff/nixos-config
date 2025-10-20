{ pkgs, ... }:

{
  services.flatpak.enable = true;
  
  # Enable XDG portal for Flatpak applications
  xdg.portal = {
    enable = true;
    extraPortals = with pkgs; [
      xdg-desktop-portal-gtk
    ];
  };
}