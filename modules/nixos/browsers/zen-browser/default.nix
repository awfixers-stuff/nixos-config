{
  inputs,
  pkgs,
  ...
}:
{
  inputs = [

  ];
  environment = {
    systemPackages = with pkgs; [
      inputs.zen-browser.packages."${system}".twilight
    ];
  };
  programs.zen-browser = {
    enable = true;
    policies = {
      policies = {
          Preferences = {
            "browser.tabs.warnOnClose" = {
              "Value" = false;
              "Status" = "locked";
            };
            "DisableAppUpdate" = false;
          };
        };
      ExtensionSettings = {
        "wappalyzer@crunchlabz.com" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4482384/wappalyzer-6.10.82.xpi";
          installation_mode = "force_installed";
        };
        "{85860b32-02a8-431a-b2b1-40fbd64c9c69}" = {
          install_url = "https://addons.mozilla.org/firefox/downloads/file/4156831/github_file_icons-1.5.1.xpi";
          installation_mode = "force_installed";
        };
      };
    };
  };
}
