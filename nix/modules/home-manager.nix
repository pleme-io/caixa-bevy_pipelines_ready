# nix/modules/home-manager.nix — auto-generated from bevy_pipelines_ready.caixa.lisp
{ config, lib, pkgs, ... }:
let cfg = config.programs.bevy_pipelines_ready; in {
  options.programs.bevy_pipelines_ready = {
    enable = lib.mkEnableOption "bevy_pipelines_ready";
    package = lib.mkOption { type = lib.types.package; default = pkgs.bevy_pipelines_ready or null; };
  };
  config = lib.mkIf cfg.enable { home.packages = [ cfg.package ]; };
}
