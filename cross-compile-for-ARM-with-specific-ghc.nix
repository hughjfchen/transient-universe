{compiler ? "ghc862" }:

let
  config = {
    packageOverrides = pkgs: rec {
      haskell = pkgs.haskell // {
        packages = pkgs.haskell.packages // {
          "${compiler}" = pkgs.haskell.packages."${compiler}".override {
            overrides = haskellPackagesNew: haskellPackagesOld: rec {
              transient-universe =
                haskellPackagesNew.callPackage ./transient-universe.nix { };

              transient =
                haskellPackagesNew.callPackage ./transient.nix { };
            };
          };
        };
      };
    };
  };

  pkgs = import <nixpkgs> { inherit config; 
                            crossSystem = {
                              config = "aarch64-unknown-linux-gnu";
                            };
			};

in
  { transient-universe = pkgs.haskell.packages.${compiler}.transient-universe;
  }
