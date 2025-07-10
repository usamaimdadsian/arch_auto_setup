## Description
This repository can be used to automate softwares installation and configuration setup after the installation of arch linux.

## Latest Tested At
 ```plasmashell --version```
<br>
plasmashell 6.4.2

## YouTube Tutorial
[![Watch the video](https://img.youtube.com/vi/pFSgpUGDF7E/hqdefault.jpg)](https://www.youtube.com/watch?v=pFSgpUGDF7E)

## Instructions
In the fresh installation of arch linux open `konsole` and run following commands
1. `sudo pacman -S git ansible`
2. `git clone https://github.com/usamaimdadsian/arch_auto_setup.git`
3. `cd arch_auto_setup`
4. `ansible-playbook main.yml`

## Test Configurations
To test your own configurations
1. Change the configurations according to your needs
2. `docker-compose up -d`
3. `docker-compose exec ansible_test bash`
4. `ansible-playbook main.yml`

To test new configurations again run the following commands before running the above commands again
1. `ctrl + d` to quit from the container terminal
2. `docker-compose down` 

## Setup Detail
### General
| Name             |  Description | File |
|------------------|-------------- |------|
| **curl, wget**   | command line downloader tools  | tasks/system.yml |
| **tar, unzip, zip**  | create or extract arhives  | # |
| **base-devel**   | A group of essential packages (like `gcc`, `make`) for building software in Arch Linux. | # |
| **stow**         | A symlink manager useful for managing dotfiles and configurations.                      | # |
| **openssh**      | A suite of tools for secure remote login using the SSH protocol.                        | # |
| **alacritty**    | A fast, GPU-accelerated terminal emulator written in Rust.                              | # |
| **xclip**        | A command-line interface to the X11 clipboard.                                          | # |
| **wl-clipboard** | A Wayland-compatible clipboard utility (alternative to `xclip`).                        | # |
| **xdotool**      | Simulates keyboard input and mouse activity in X11.                                     | # |
| **tmux**         | A terminal multiplexer for running and switching between multiple terminal sessions.    | # |
| **cmake**        | A cross-platform build system generator used for compiling software.                    | # |
| **yay**        | I use yay to install aur packages                    | # |
| **konsave**        | To resuse kde plasma configurations                    | # |
| **xdman**        | GUI tools to download files                    |tasks/xdman.yml |
| **ntfs-3g**                | A FUSE-based driver that enables full read/write access to NTFS file systems on Linux.                    | tasks/others.yml |
| **firefox**                | A free and open-source web browser developed by Mozilla, focused on privacy and standards.                | # |
| **google-chrome**          | A fast and widely used proprietary web browser developed by Google.                                       | # |
| **visual-studio-code-bin** | A binary release of Visual Studio Code, a lightweight and extensible code editor by Microsoft.            | # |  
| **zotero-bin**             | A reference management tool that helps collect, organize, and cite research sources.                      | # |  
| **mega-sync**              | A desktop client for syncing files with the MEGA cloud storage service.                                   | # |  
| **bitwarden**              | An open-source password manager that stores credentials securely across devices.                          | # |  
| **obsidian**               | A Markdown-based knowledge management and note-taking app focused on linking ideas.                       | # |  
| **spectacle**              | KDE’s screenshot utility for capturing full, windowed, or custom portions of the screen.                  | # |  
| **obs-studio**             | Free, open-source software for video recording and live streaming.                                        | # |  
| **sox**                    | A command-line utility for processing and transforming audio files.                                       | # |  
| **gwenview**               | KDE’s lightweight and fast image viewer with basic editing features.                                      | # |  
| **urdufonts**              | A collection of Urdu language fonts for proper rendering in documents and UI.                             | # |  
| **okular**                 | A powerful document viewer supporting PDFs, ePubs, and more, integrated into KDE.                         | # |  
| **docker**                 | A containerization platform for developing, deploying, and running applications in isolated environments. | # |  

### Terminal

| Tool                        | Description                                                                                        |
| --------------------------- | -------------------------------------------------------------------------------------------------- |
| **alacritty**   | A fast, GPU-accelerated terminal emulator written in Rust.                              |
| **zsh**                     | A powerful and configurable Unix shell with advanced features and scripting support.               |
| **oh-my-zsh**               | A popular Zsh configuration framework that makes managing plugins and themes easy.                 |
| **zsh-autosuggestions**     | A Zsh plugin that suggests commands as you type based on your command history.                     |
| **zsh-syntax-highlighting** | A Zsh plugin that highlights command-line input to indicate syntax errors and improve readability. |
| **zsh-vi mode**             | A Zsh feature that enables Vi-like keybindings for efficient command-line editing.                 |

I use `kj` to go to normal mode.
All these configuraions are in tasks/zsh.yml except alacritty which is in tasks/system.yml

### Languages
| Name             |  Description                            |
|------------------|-----------------------------------------|
| **go**   |  |
| **rust**   | A group of essential packages (like `gcc`, `make`) for building software in Arch Linux. |
| **luarocks**   | I need that for neovim configurations |
| **dotnet-sdk**   | I do c# development and neovim also need it for setup |
| **python-debugpy**        | Neovim configuraions require it                    |
| **python-uv**        | I use UV to manage my python environments                    |
| **nodejs, npm, pnpm**        | I do javascript development, neovim also requires it|

All these configuraions are in tasks/system.yml

### Neovim
| Tool                    | Description                                                                             |
| ----------------------- | --------------------------------------------------------------------------------------- |
| **gvim**                | A GUI version of Vim with menus and mouse support for easier editing.                   |
| **neovim**              | A modern Vim-based text editor focused on extensibility and performance.                |
| **tree-sitter-cli**     | The command-line interface for working with Tree-sitter parsers.                        |
| **tree-sitter**         | A fast, incremental parsing library for building language-aware tools.                  |
| **zathura**             | A highly customizable and minimal PDF and document viewer.                              |
| **biber**               | A modern bibliography processor used with BibLaTeX in LaTeX documents.                  |
| **texlive-bibtexextra** | A TeX Live package providing additional bibliography-related tools for BibTeX.          |
| **texlive-binextra**    | A collection of extra TeX Live binaries not included in the core.                       |
| **texlive-core**        | The main TeX Live package group needed to compile LaTeX documents.                      |
| **tectonic**            | A modern, self-contained LaTeX engine with automated dependency management.             |
| **fzf**                 | A fast, fuzzy file and text finder for the terminal.                                    |
| **lazygit**             | A simple, terminal-based Git UI for quick Git operations.                               |
| **fd**                  | A user-friendly alternative to `find` with sensible defaults and speed.                 |
| **sqlfluff**            | A SQL linter and formatter that enforces style rules across SQL dialects.               |
| **fish**                | A smart, user-friendly command-line shell with autosuggestions and syntax highlighting. |
| **luarocks**            | A package manager for Lua modules, allowing easy installation of Lua libraries.         |

All these configuraions are in tasks/nvim.yml

### dotfiles
- clone the dot files [repository](https://github.com/usamaimdadsian/dotfiles.git)
- stow the files
- apply the plasma setup using konsave

To save your own kde settings run the following command
`konsave -s plasma-setup -f`
These configurations are in tasks/dotfiles.yml
