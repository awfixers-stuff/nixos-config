  { ... }:

  {
    services.flatpak = {
      enable = true;
      update.auto.enable = true;
      uninstallUnmanaged = true;
      remotes = [
        { name = "flathub"; location = "https://dl.flathub.org/repo/flathub.flatpakrepo"; }
        { name = "flathub-beta"; location = "https://flathub.org/beta-repo/flathub-beta.flatpakrepo"; }
      ];
      packages = [
        "org.onionshare.OnionShare"
        "io.github.brunofin.Cohesion"
        "io.github.tobagin.sonar"
        "engineer.atlas.Nyxt"
        "org.zulip.Zulip"
        "com.ranfdev.Notify"
        "io.github.pieterdd.RcloneShuttle"
        "com.github.unrud.VideoDownloader"
        "io.github.alainm23.planify"
      ];
      overrides.global = {
        Context.sockets = [ "wayland" "x11" ];
      };
    };
  }
