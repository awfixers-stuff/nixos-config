{ pkgs, ... }:

let

cli = with pkgs; [
  graphite-cli
  eza
  fd
  ffmpeg
  openssl
  gnumake
  jc
  jq
  just
  killall
  libnotify
  openssl
  ouch
  pkg-config
  ripgrep
  sd
  tree
  unzip
  watchexec
  wget
  wl-clipboard
  zip
];
in

{
  home.packages = builtins.concatLists [ cli ];
}
