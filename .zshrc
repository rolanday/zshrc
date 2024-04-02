export PATH="/opt/homebrew/opt/node@18/bin:$PATH"
eval "$(oh-my-posh init zsh --config $(brew --prefix oh-my-posh)/themes/catppuccin_mocha.omp.json)"
# pnpm
export PNPM_HOME="/Users/roland/Library/pnpm"
case ":$PATH:" in
  *":$PNPM_HOME:"*) ;;
  *) export PATH="$PNPM_HOME:$PATH" ;;
esac
# pnpm end
# bun completions
[ -s "/Users/roland/.bun/_bun" ] && source "/Users/roland/.bun/_bun"

# bun
export BUN_INSTALL="$HOME/.bun"
export PATH="$BUN_INSTALL/bin:$HOME/git/bin:$PATH"
export PATH="/opt/homebrew/opt/postgresql@16/bin:$PATH"
if command -v ngrok &>/dev/null; then
  eval "$(ngrok completion)"
fi
export PATH="/opt/homebrew/opt/node@20/bin:$PATH"

# brew install g-ls to install g (ls replacement)
alias ls="eza"
# brew install bat to install bat (cat replacement)
alias cat="bat"
# brew install ripgrep to install ripgrep (grep replacement)
alias grep="rg"

# vim
alias vim="nvim"
