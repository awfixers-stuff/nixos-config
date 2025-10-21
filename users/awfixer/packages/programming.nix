{ pkgs, ... }:

let

programming = with pkgs; [
  go
  hugo
  elixir
  gleam
  rustup
  asdf-vm
  sdkmanager
  python314
  pnpm
  nodejs
  llvm
  ruby
  railway
  rails-new
  doctl
  deno
  wasm-tools
  wasm
  wasm-pack
  uv
  poetry
];

in

{
  home.packages = builtins.concatLists [ programming ];
}
