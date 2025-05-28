{config, ...}:
{
  programs.terminator = {
    enable = true;
    config = {
      profiles.default = {
        use_system_font = false;
        font = "FiraCode Nerd Font 14";
      };
    };
  };
}
