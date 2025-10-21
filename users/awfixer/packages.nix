{ pkgs, ... }:

let

base = with pkgs; [
  obsidian
  standardnotes
  claude-code
  gemini-cli
  vercel-pkg
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
