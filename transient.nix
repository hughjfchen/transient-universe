{ mkDerivation, base, bytestring, containers, directory, fetchgit
, mtl, primitive, random, stdenv, stm, time, transformers
}:
mkDerivation {
  pname = "transient";
  version = "0.6.3";
  src = fetchgit {
    url = "https://github.com/hughjfchen/transient";
    sha256 = "01jar42j68xnbwbbsf8zdwnlzdxngs101a8438bkqlaqpzvh2wz0";
    rev = "b877e688ca14db92336063fc5384ea5caba3383e";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    base bytestring containers directory mtl primitive random stm time
    transformers
  ];
  testHaskellDepends = [
    base bytestring containers directory mtl random stm time
    transformers
  ];
  homepage = "https://github.com/transient-haskell/transient";
  description = "composing programs with multithreading, events and distributed computing";
  license = stdenv.lib.licenses.mit;
}
