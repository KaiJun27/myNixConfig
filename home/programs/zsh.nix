{config, pkgs, ...}:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autocd = true;

    shellAliases = {
      ll = "ls -al";
      update = "sudo nixos-rebuild switch --flake /home/user/config";
      e = "$EDITOR";
      edit = "sudo -e";
    };

    autosuggestion = {
      enable = true;
    };
    history = {
      size = 10000;
      ignoreAllDups = true;
      path = "$HOME/.zsh_history";
      ignorePatterns = ["rm *" "pkill *" "cp *"];
    };
  };

  programs.zoxide = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.fzf = {
    enable = true;
    enableZshIntegration = true;
  };

  programs.starship = {
    enable = true;
    enableZshIntegration = true;
    settings = {
     format = ''
     [░▒▓](#a3aed2)[  ](bg:#a3aed2 fg:#090c0c)[](bg:#769ff0 fg:#a3aed2)$directory[](fg:#769ff0 bg:#394260)$git_branch$git_status[](fg:#394260 bg:#212736)$nodejs$rust$golang$php$python[](fg:#212736 bg:#1d2230)$time[ ](fg:#1d2230)
     $nix_shell$character'';
     right_format = ''
      $cmd_duration$status$jobs
     '';
     directory = {
      style = "fg:#e3e5e5 bg:#769ff0";
      format = "[ $path ]($style)";
      truncation_length = 3;
      truncation_symbol = "…/";
      substitutions = {
	Documents = "󰈙 ";
      	Downloads = " ";
      	Music = " ";
      	Pictures = " ";
      };
     };
     git_branch = {
      symbol = "";
      style = "bg:#394260";
      format = "[[ $symbol $branch ](fg:#769ff0 bg:#394260)]($style)";
     };
     git_status = {
      style = "bg:#394260";
      format = "[[($all_status$ahead$ahead_count$behind$behind_count$diverged$up_to_date )](fg:#769ff0 bg:#394260)]($style)";
     };
     nodejs = {
      symbol = "";
      style = "bg:#212736";
      format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
     };
     rust = {
      symbol = "";
      style = "bg:#212736";
      format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
     };
     golang = {
      symbol = "";
      style = "bg:#212736";
      format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
     };
     php = {
      symbol = "";
      style = "bg:#212736";
      format = "[[ $symbol ($version) ](fg:#769ff0 bg:#212736)]($style)";
     };
     time = {
      disabled = false;
      time_format = "%R";
      style = "bg:#1d2230";
      format = "[[  $time ](fg:#a0a9cb bg:#1d2230)]($style)";
     };
     python = {
      style = "bg:#212736";
      format = "[via [$symbol$pyenv_prefix($version )(\($virtualenv\) )](fg:#769ff0 bg:#212736)]($style)";
     };
     status = {
      disabled = false;
     };
     jobs = {
      symbol = "";
     };
    };
  };
}
