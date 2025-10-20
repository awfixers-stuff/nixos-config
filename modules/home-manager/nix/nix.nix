{
  pkgs,
  config,
  lib,
  ...
}:
{
  nix = {
    enable = true;
    package = lib.mkDefault pkgs.nix;
    settings = rec {
      max-jobs = 20;
      experimental-features = [
        "nix-command"
        "flakes"
      ];

      trusted-users = [ config.home.username ];
      # # Add community Cachix to binary cache
      builders-use-substitutes = true;
      trusted-substituters = substituters;
      substituters = [
        "https://cache.nixos.org"
        "https://nix-community.cachix.org"
        "https://install.determinate.systems"
        "https://hyprland.cachix.org"
      ];
      trusted-public-keys = [
        "cache.nixos.org-1:6NCHdD59X431o0gWypbMrAURkbJ16ZPMQFGspcDShjY="
        "nix-community.cachix.org-1:mB9FSh9qf2dCimDSUo8Zy7bkq5CX+/rkCWyvRCYg3Fs="
        "cache.flakehub.com-3:hJuILl5sVK4iKm86JzgdXW12Y2Hwd5G07qKtHTOcDCM="
        "hyprland.cachix.org-1:a7pgxzMz7+chwVL3/pzj6jIBMioiJM7ypFP8PwtkuGc="
      ];

      # Scans and hard links identical files in the store
      auto-optimise-store = true;
    };
  };
}
