{config, pkgs, ...}:
{
  programs.neovim = {
    enable = true;
    viAlias = true;
    vimAlias = true;
    defaultEditor = true;
    extraPackages = with pkgs; [
      nodejs_24
      wl-clipboard
    ];
    plugins = with pkgs.vimPlugins; [
      vim-airline
      vim-bufferline
      {
      plugin = vim-airline-themes;
      config = ''
	let g:airline_theme='badwolf'
	let g:airline_powerline_fonts = 1
      '';
      }

    ];
    extraConfig = ''
      set number relativenumber
      set sw=2
      set clipboard+=unnamedplus
    '';
    };
}
