{

  inputs = {
    miso.url = "github:dmjio/miso";
    miso-lynx.url = "github:dmjio/miso-lynx";
  };

  outputs = inputs:
    inputs.miso.inputs.flake-utils.lib.eachDefaultSystem (system: {
      devShell = inputs.miso.outputs.devShells.${system}.default;
      devShells.native = inputs.miso.outputs.devShells.${system}.native;
    });

}

