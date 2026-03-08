# My AstroNvim User Configuration (AstroNvim v4)

My user configuration template for
[AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
mv ~/.local/state/nvim ~/.local/state/nvim.bak
mv ~/.cache/nvim ~/.cache/nvim.bak
```

#### Clone the repository

```shell
git clone https://github.com/coaxial/astronvim-config ~/.config/nvim
```

#### Start Neovim

It will install everything that's missing.

```shell
nvim
```

## Configuration

| Plugin  | Keymap                         | Action              |
| ------- | ------------------------------ | ------------------- |
| Codeium | <kbd>Ctrl</kbd> + <kbd>g</kbd> | Accept suggestion   |
| Codeium | <kbd>Esc</kbd>                 | Close               |
| Codeium | <kbd>Ctrl</kbd> + <kbd>n</kbd> | Next suggestion     |
| Codeium | <kbd>Ctrl</kbd> + <kbd>p</kbd> | Previous suggestion |
