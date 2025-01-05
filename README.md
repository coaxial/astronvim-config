# My AstroNvim User Configuration

My user configuration template for
[AstroNvim](https://github.com/AstroNvim/AstroNvim)

## 🛠️ Installation

#### Make a backup of your current nvim and shared folder

```shell
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak
```

#### Clone AstroNvim

```shell
git clone https://github.com/AstroNvim/AstroNvim ~/.config/nvim
cd ~/.config/nvim
git checkout v3.45.3 # This template is not yet compatible with AstroNvim v4
```

#### Clone the repository

```shell
git clone https://github.com/coaxial/astronvim-config ~/.config/nvim/lua/user
```

#### Start Neovim

It will install everything that's missing.

```shell
nvim
```
