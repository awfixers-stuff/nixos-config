{ ... }:
{
  imports = [
    #./appimage
    ./bat
    ./direnv
    ./fzf
    ./git
    ./lazygit
    ./man
    ./flatpak.nix
    ./nix
    #./nixcord
    ./password-store
    ./ssh
    ./zoxide
  ];
}
