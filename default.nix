with import <nixpkgs> {};
let
  frameworks = pkgs.darwin.apple_sdk.frameworks;
in
[
  cargo
  rustc
  curl
] ++ lib.optionals stdenv.isDarwin (with darwin.apple_sdk.frameworks; [
  AppKit
  darwin.objc4
  ])
