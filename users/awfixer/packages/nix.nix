{ pkgs, ... }:

let

nix = with pkgs; [
    nil
    nix-info
    nix-deploy
    nix-doc
    nix-web
    nix-tree
    nix-health
    nix-zsh-completions
    nixd
    nixpkgs-fmt
    omnix
  ];

in

{
  home.packages = builtins.concatLists [ nix ];
}
