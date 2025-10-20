{ pkgs, ... }:
{
  imports = [
    ./keyring.nix
  ];
  services.xserver = {
    enable = true;
    displayManager.gdm.enable = true;
    desktopManager.gnome.enable = true;
  };

  environment.systemPackages = with pkgs; [
    gnome-tweaks
    gnome-extension-manager
    gnomeExtensions.arcmenu
    gnomeExtensions.caffeine
    gnomeExtensions.just-perfection
    gnomeExtensions.dash2dock-lite
    gnomeExtensions.appindicator
    gnomeExtensions.gsconnect
  ];

  environment.gnome.excludePackages = (with pkgs; [
    gnome-clocks
    gnome-calendar
    gnome-maps
    gnome-photos
    gnome-tour
    cheese # webcam tool
    gnome-music
    gedit # text editor
    epiphany # web browser
    geary # email reader
    gnome-characters
    tali # poker game
    iagno # go game
    hitori # sudoku game
    atomix # puzzle game
    yelp # Help viewer
    gnome-contacts
    gnome-initial-setup
  ]);
}
