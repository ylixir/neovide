{ pkgs ? import <nixpkgs> {} }:
with pkgs;
stdenv.mkDerivation {
  name = "neovide";
  buildInputs = import ./default.nix;
}
