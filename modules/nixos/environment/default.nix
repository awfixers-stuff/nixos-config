{ pkgs, ... }:
{
  environment = {
    systemPackages = with pkgs; [
      gh
      glab
      git
      ghunt
      git-repo
      reposurgeon
      repomix
      cachix
      ghostty
      autorandr
      youtube-music
      zed-editor
      devbox
      vesktop
      yara
      brave
      nixd
      nil
    ];
  };
}
