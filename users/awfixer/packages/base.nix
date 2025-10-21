{ pkgs, ... }:

let

base = with pkgs; [
  qbittorrent-enhanced
  clapper
  clapper-enhancers
];

in

{
  home.packages = builtins.concatLists [ base ];
}
