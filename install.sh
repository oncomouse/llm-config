#!/bin/bash
stow -d ./ -t "$HOME" --no-folding --dotfiles -R eca
stow -d ./ -t "$HOME" --no-folding --dotfiles -R llm-cli
stow -d ./ -t "$HOME" --no-folding --dotfiles -R fish
# Write TAMU chat key to llm-cli config file:
fish -c "printf '{\"tamu\": \"%s\"}' $TAMU_AI_CHAT_KEY" > "$HOME/.config/io.datasette.llm/keys.json"
