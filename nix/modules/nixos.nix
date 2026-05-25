# nix/modules/nixos.nix — auto-generated from bevy_pipelines_ready.caixa.lisp
# description: "Bevy plugin for tracking render pipeline status."
{ config, lib, pkgs, ... }:
let
  cfg = config.services.bevy_pipelines_ready;
in {
  options.services.bevy_pipelines_ready = {
    enable = lib.mkEnableOption "bevy_pipelines_ready";
    package = lib.mkOption {
      type = lib.types.package;
      default = pkgs.bevy_pipelines_ready or null;
    };
  };
  config = lib.mkIf cfg.enable {
    environment.systemPackages = [ cfg.package ];
  };
}
