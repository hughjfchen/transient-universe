{ mkDerivation, atomic-primops, base, bytestring, containers
, directory, fetchgit, mtl, primitive, random, stdenv, stm, time
, transformers
}:
mkDerivation {
  pname = "transient";
  version = "0.6.3";
  src = fetchgit {
    url = "https://github.com/hughjfchen/transient";
    sha256 = "1d325as3xywddqmz4s8hv41nz0b97zl465cf837abg5dj54fqs6p";
    rev = "4573879587966418c22f5d315b103bf08229bbcd";
    fetchSubmodules = true;
  };
  libraryHaskellDepends = [
    atomic-primops base bytestring containers directory mtl primitive
    random stm time transformers
  ];
  testHaskellDepends = [
    atomic-primops base bytestring containers directory mtl random stm
    time transformers
  ];
  homepage = "https://github.com/transient-haskell/transient";
  description = "composing programs with multithreading, events and distributed computing";
  license = stdenv.lib.licenses.mit;
}
