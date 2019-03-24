let
  config = {
    packageOverrides = pkgs: rec {
      haskellPackages = pkgs.haskellPackages.override {
        overrides = haskellPackagesNew: haskellPackagesOld: rec {
          transient-universe =
            haskellPackagesNew.callPackage ./transient-universe.nix { };

          transient =
            haskellPackagesNew.callPackage ./transient.nix { };
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
  { transient-universe = pkgs.haskellPackages.transient-universe;
  }
