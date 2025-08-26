  { config, pkgs, ... }: {
  xdg.configFile."/home/john1917/.config/niri/config.kdl".source = ./config.kdl;
}
