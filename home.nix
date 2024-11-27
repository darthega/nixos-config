# This file aggregates all possible user modules
{ config, pkgs, ... }:
{
  imports = [
    ./users/darthega
  ];
}