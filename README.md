# dotfiles

Fresh Mac setup. Run in order — later steps assume earlier ones succeeded.

## 1. Prereqs (install manually first)

- **Xcode CLI tools** — `xcode-select --install`
- **Homebrew** — https://brew.sh
- **VS Code** — install before step 2 so the VS Code extensions in the Brewfile actually land

## 2. Install everything in the Brewfile

```sh
brew bundle --file=./Brewfile
```

Installs `pyenv`, `gh`, `git-lfs`, `awscli`, `1password-cli`, `docker-desktop`, the VS Code extensions, etc.

## 3. Shell

1. Install **oh-my-zsh** — https://ohmyz.sh
2. Copy `.zshrc` → `~/.zshrc`
3. In Terminal: Settings → Profile → Colors → pick a dark preset (oh-my-zsh doesn't change the terminal background itself)

## 4. Git

1. Copy `gitconfig` → `~/.gitconfig`
2. `git lfs install` (the gitconfig references LFS filters)

## 5. Vim

1. Copy `.vimrc` → `~/.vimrc`
2. Install **Vim-Plug** — https://github.com/junegunn/vim-plug
3. Open vim and run `:PlugInstall`

## 6. VS Code

```sh
cp "settings.json (vscode)" "$HOME/Library/Application Support/Code/User/settings.json"
cp "keybindings.json (vscode)" "$HOME/Library/Application Support/Code/User/keybindings.json"
```

## Optional / on demand

- **nvm** — https://github.com/nvm-sh/nvm (`.zshrc` load lines are guarded, safe to skip)
- **poetry** — `.zshrc` adds `~/.poetry/bin` to PATH; install if you use it
- **miniconda** — https://docs.anaconda.com/miniconda/install/ then `conda init zsh`. Machine-specific, intentionally not in this repo.
- **Claude Code** — required for the `cdc` alias in `.zshrc`. The `.zshrc` adds `~/.local/bin` to PATH, which assumes the curl installer (`curl -fsSL claude.ai/install.sh | bash`).

## Updating this repo from your current machine

```sh
brew bundle dump --file=Brewfile --force
```

Then copy any changed dotfiles back into the repo and commit.
