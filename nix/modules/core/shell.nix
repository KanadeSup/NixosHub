{ pkgs, ... }:

{
  programs.zsh = {
    enable = true;
    shellInit = ''
      export ZDOTDIR=~/.config/zsh
      export HISTFILE=~/.config/zsh/.zsh_history
    '';
  };
  users.defaultUserShell = pkgs.zsh;
}
