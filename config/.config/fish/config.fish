set dots_fish "$HOME/.dotfiles/fish"

# Source everything
for f in (ls $dots_fish)
    . "$dots_fish/$f"
end

set -e dots_fish

