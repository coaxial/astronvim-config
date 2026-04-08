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

## Updating AstroNvim (major versions)

Update `lua/lazy_setup.lua` and change the AstroNvim version string to `^<major
version to target>`.
