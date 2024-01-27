with (import <nixpkgs> {});
let
  env = bundlerEnv {
    name = "loomio-bundler-env";
    ruby = ruby_3_2;
    gemfile  = ./Gemfile;
    lockfile = ./Gemfile.lock;
    gemset   = ./gemset.nix;
  };
in stdenv.mkDerivation {
  name = "loomio";
  buildInputs = [ env ruby_3_2 ];
}
