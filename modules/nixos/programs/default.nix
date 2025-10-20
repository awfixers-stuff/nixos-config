{ pkgs, ... }:
{
  imports = [
    ./gnupg
    ./nix-ld
  ];
programs = {
    bat.enable = true;
    htop.enable = true;
    neovim.enable = true;
    vim.enable = true;
    nano.enable = false;
    usbtop.enable = true;
    direnv.enable = true;
    mtr.enable = true;
  };

  services.mysql = {
    enable = true;
    package = pkgs.mariadb;
  };
  services.postgresql = {
    enable = true;
    package = pkgs.postgresql_17;
  };
  services.emacs = {
    enable = true;
    install = true;
  };
}
