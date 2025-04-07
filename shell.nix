{ pkgs ? import <nixpkgs> {} }:

pkgs.mkShell {
	buildInputs = [
		pkgs.libGL
		pkgs.pkg-config
	];
	LD_LIBRARY_PATH = lib.makeLibraryPath [ pkgs.libGL ];
}
