{ ... }:
{
  programs.zsh = {
    enable = true;
    enableCompletion = true;
    autosuggestions.enable = true;
    syntaxHighlighting.enable = true;
    shellAliases = (import ./aliases.nix) // {};
    ohMyZsh = {
        enable = true;
        plugins = [ "emotty" "aliases" "colored-man-pages" "command-not-found" "cp" "github" "gitignore" "golang" "systemd" "pip" "python" "tugboat" "git" "npm" "zoxide" "1password" "docker" "docker-compose" "git-extras" "sudo" "zsh-interactive-cd" ];
        theme = "random";
      };
  };
}
