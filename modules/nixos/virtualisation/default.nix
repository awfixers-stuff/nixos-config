{ ... }:
{
  programs = {
    adb = {
      enable = true;
    };
    virt-manager = {
      enable = true;
    };
  };
  services.qemuGuest = {
    enable = true;
  };
  virtualisation = {
    libvirtd = {
      enable = true;
      onBoot = "start";
    };
    waydroid = {
      enable = true;
    };
    docker = {
      enable = true;
      autoPrune = {
        enable = true;
        dates = "daily";
      };
    };
    podman = {
      enable = true;
      autoPrune = {
        enable = true;
        dates = "daily";
      };
    };
  };
}
