with import <nixpkgs> {};
let
  ruby = ruby_3_1;
  gems = bundlerEnv {
    name = "gems-for-cswww";
    inherit ruby;
    gemdir = ./.;
  };
in mkShell {
  packages = [
    gems
    gems.wrappedRuby
    bundix
  ];
}
