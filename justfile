default:
    just install
    just setup

install:
    zsh ./scripts/install.sh

setup:
    zsh ./scripts/setup.sh

link:
    zsh ./scripts/link.sh

reset:
    zsh ./scripts/reset.sh
