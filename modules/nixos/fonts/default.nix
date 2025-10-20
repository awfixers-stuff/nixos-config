{ pkgs, lib, ... }:
{
  fonts = {
    fontDir.enable = true;
    packages = builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.nerd-fonts)
      ++ builtins.filter lib.attrsets.isDerivation (builtins.attrValues pkgs.noto-fonts);
  };
}
