# SPDX-License-Identifier: MIT

{ config, pkgs, osConfig, ... }:

let
  # Import entire folder's expressions.
  importFolder = folder:
    builtins.map (file: folder + "/${file}")
      (builtins.attrNames (builtins.readDir folder));

in {
  imports = builtins.concatMap importFolder [
    ./programs
    ./gui
    # ./misc
  ];

  # basic settings
  # home.sessionVariables = import ./lib/shell/vars.nix { inherit pkgs; };

  home.stateVersion = "24.11";
}
