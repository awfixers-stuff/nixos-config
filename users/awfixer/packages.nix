{ pkgs, ... }:

let

base = with pkgs; [
  obsidian
  standardnotes
  claude-code
  gemini-cli
  qbittorrent-enhanced
  clapper
  clapper-enhancers
  protonvpn-gui
  go
];

in

{
  home.packages = builtins.concatLists [ base ];
}
