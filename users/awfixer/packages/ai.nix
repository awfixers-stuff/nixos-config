{ pkgs, ... }:

let

ai = with pkgs; [
  ollama
  gemini-cli
  codex
  claude-code
  open-webui
];


in

{
  home.packages = builtins.concatLists [ ai ];
}
