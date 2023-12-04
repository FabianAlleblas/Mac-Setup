# Mac setup for development

This is a collection of scripts to simplify the installation of my mac.
You are welcome to use it, but it is designed for my requirements. So maybe you have to make some changes for your local setup.

# 1. Brew and the first tools.

```sh
zsh <(curl -s https://raw.githubusercontent.com/FabianAlleblas/Mac-Setup/main/install-brew)
```

### List of tools that will be installed:

- brew
- go
- zsh
- git
- git-extras
- git-flow-avh
- antigen
- zsh-completions
- exa
- tree
- nvm
- fzf
- node
- ddev
- mkcert
- just

# 2. Install apps

```sh
zsh <(curl -s https://raw.githubusercontent.com/FabianAlleblas/Mac-Setup/main/install-apps)
```

### List of apps that will be installed.

- iterm2
- visual-studio-code
- rectangle
- 1password
- firefox-developer-edition
- google-chrome
- adobe-acrobat-reader

# 3. Setup shell-integration for iTerm

```sh
zsh <(curl -s https://raw.githubusercontent.com/FabianAlleblas/Mac-Setup/main/setup-iterm)
```

# 4. Configure macOS

```sh
zsh <(curl -s https://raw.githubusercontent.com/FabianAlleblas/Mac-Setup/main/setup-macos)
```

For a better macOS usability like I'm used to it.
Maybe do a restart after this script.