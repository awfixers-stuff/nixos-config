{
  pkgs,
  lib,
  ...
}:
with lib;
{
  options.programs._1password-gui = {
    sshAgent = mkEnableOption "1Password SSH Agent" // {
      default = true;
    };
  };
  config = {
    programs = {
      _1password.enable = true;
      _1password-gui = {
        package = pkgs._1password-gui;
        enable = true;
        polkitPolicyOwners = [ "awfixer" ];
      };
    };
    environment.etc = {
      "1password/custom_allowed_browsers" = {
        text = ''
          .zen-wrapped
          zen
          .zen
          chromium
          .chromium
          brave
          .brave
          .chromium-wrapped
          .brave-wrapped
        '';
        mode = "0755";
      };
    };
  };
}
