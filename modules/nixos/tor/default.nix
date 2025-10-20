{... }:
{
  imports = [
    #./tor.nix
    #./torrc.nix
  ];
  environment = {
    systemPackages = with pkgs; [
      tor
      arti
      nginx
      caddy
      tor-browser
      mullvad
      mullvad-closest
      mullvad-browser
    ];
  };
}
