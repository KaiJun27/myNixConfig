{ inputs, osConfig, ...}:

{
  imports = [
    inputs.plasma-manager.homeManagerModules.plasma-manager
  ];
  programs.plasma = {
    enable = true;
    shortcuts = {
      "services/org.kde.konsole.desktop"."_launch" = [ ];
      "services/terminator.desktop"."_launch" = "Ctrl+Alt+T";
    };
    configFile = {
      "kdeglobals"."General"."TerminalApplication" = "terminator";
      "kdeglobals"."General"."TerminalService" = "terminator.desktop";
    };
  };
}
