{ mkDerivation, aeson, base, bytestring, case-insensitive
, containers, directory, entropy, filepath, hashable, HTTP, iproute
, mtl, network, network-info, network-uri, primitive, process
, random, stdenv, stm, TCache, text, time, transformers, transient
, vector, websockets
}:
mkDerivation {
  pname = "transient-universe";
  version = "0.5.2";
  src = ./.;
  isLibrary = true;
  isExecutable = true;
  libraryHaskellDepends = [
    aeson base bytestring case-insensitive containers directory entropy
    filepath hashable HTTP iproute mtl network network-info network-uri
    primitive process random stm TCache text time transformers
    transient vector websockets
  ];
  executableHaskellDepends = [
    aeson base bytestring case-insensitive containers directory
    filepath hashable HTTP mtl network network-info network-uri process
    random stm TCache text time transformers transient vector
    websockets
  ];
  testHaskellDepends = [
    aeson base bytestring case-insensitive containers directory
    filepath hashable HTTP mtl network network-info network-uri process
    random stm TCache text time transformers transient vector
    websockets
  ];
  homepage = "https://github.com/transient-haskell/transient-universe";
  description = "Remote execution and map-reduce: distributed computing for Transient";
  license = stdenv.lib.licenses.mit;
}
