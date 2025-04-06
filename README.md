## Vim Configuration Installation and Usage Documentation

### 1. Environment Preparation

Before starting, ensure the following dependencies are installed:

#### 1.1 Install Git
Git is used for plugin management and configuration file cloning.

- **Debian/Ubuntu**:
  ```bash
  sudo apt update
  sudo apt install git
  ```
- **Fedora**:
  ```bash
  sudo dnf install git
  ```
- **Arch Linux**:
  ```bash
  sudo pacman -S git
  ```
- **openSUSE**:
  ```bash
  sudo zypper install git
  ```
- **macOS**:
  ```bash
  brew install git
  ```
- **Windows**:
  Download and install [Git for Windows](https://git-scm.com/download/win).

#### 1.2 Install Vim or Neovim
Ensure Vim 8.0+ or Neovim is installed.

- **Debian/Ubuntu**:
  ```bash
  sudo apt update
  sudo apt install vim
  ```
- **Fedora**:
  ```bash
  sudo dnf install vim
  ```
- **Arch Linux**:
  ```bash
  sudo pacman -S vim
  ```
- **openSUSE**:
  ```bash
  sudo zypper install vim
  ```
- **macOS**:
  ```bash
  brew install vim
  ```
- **Windows**:
  Download and install [Vim for Windows](https://www.vim.org/download.php).

#### 1.3 Install Node.js (Optional)
Node.js is required for `coc.nvim` plugin's language server support.

- **Debian/Ubuntu**:
  ```bash
  curl -fsSL https://deb.nodesource.com/setup_16.x | sudo -E bash -
  sudo apt install -y nodejs
  ```
- **Fedora**:
  ```bash
  sudo dnf install nodejs
  ```
- **Arch Linux**:
  ```bash
  sudo pacman -S nodejs
  ```
- **openSUSE**:
  ```bash
  sudo zypper install nodejs
  ```
- **macOS**:
  ```bash
  brew install node
  ```
- **Windows**:
  Download and install [Node.js for Windows](https://nodejs.org/).

#### 1.4 Install Python 3 (Optional)
Some plugins may require Python support.

- **Debian/Ubuntu**:
  ```bash
  sudo apt update
  sudo apt install python3 python3-pip
  ```
- **Fedora**:
  ```bash
  sudo dnf install python3 python3-pip
  ```
- **Arch Linux**:
  ```bash
  sudo pacman -S python python-pip
  ```
- **openSUSE**:
  ```bash
  sudo zypper install python3 python3-pip
  ```
- **macOS**:
  ```bash
  brew install python
  ```
- **Windows**:
  Download and install [Python for Windows](https://www.python.org/downloads/).

#### 1.5 Install Other Tools (Optional)
- **fzf**: Fuzzy finder tool.
  ```bash
  git clone --depth 1 https://github.com/junegunn/fzf.git ~/.fzf
  ~/.fzf/install
  ```
- **ripgrep**: Fast text search tool.
  - Debian/Ubuntu:
    ```bash
    sudo apt install ripgrep
    ```
  - Fedora:
    ```bash
    sudo dnf install ripgrep
    ```
  - Arch Linux:
    ```bash
    sudo pacman -S ripgrep
    ```
  - openSUSE:
    ```bash
    sudo zypper install ripgrep
    ```
  - macOS:
    ```bash
    brew install ripgrep
    ```

#### 1.6 Install Nerd Fonts (Recommended)
Nerd Fonts provide rich icon support for plugins like status bars and file trees.

1. Visit the [Nerd Fonts website](https://www.nerdfonts.com/).
2. Download and install your preferred font (e.g., `FiraCode Nerd Font` or `JetBrainsMono Nerd Font`).
3. Set the terminal or IDE font to the installed Nerd Font.

---

### 2. Installation and Configuration

#### 2.1 Backup Existing Configuration
Before proceeding with the installation, it is highly recommended to backup your existing Vim configuration to avoid losing any custom settings.

```bash
mv ~/.vim ~/.vim_backup

mv ~/.vimrc ~/.vimrc_backup

# Backup Neovim Configuration (if applicable)
mv ~/.config/nvim ~/.config/nvim_backup
```

#### 2.2 Clone Configuration Files
Clone the configuration files to your local machine:

```bash
cd ~

git clone https://github.com/josiahbristow/vim-config.git
```

#### 2.3 Install Plugin Manager
Ensure [vim-plug](https://github.com/junegunn/vim-plug) is installed:

```bash
curl -fLo ~/.vim/autoload/plug.vim --create-dirs \
    https://raw.githubusercontent.com/junegunn/vim-plug/master/plug.vim
```

#### 2.4 Install Plugins
1. Open Vim:
   ```bash
   vim
   ```
2. Run the following command in Vim to install plugins:
   ```vim
   :PlugInstall
   ```
   Wait for the plugins to install.

---

### 3. Plugin Functionality Overview

Below are the main plugins included in the configuration and their functionalities:

| Plugin Name               | Description | Key Features | Recommended Usage |
|---------------------------|-------------|--------------|-------------------|
| `vim-matchup`             | Enhanced matching for brackets, tags, etc. | Extends % matching, supports HTML/XML tags, works with motion commands | Navigation in code with complex nested structures |
| `vim-surround`             | Manipulate surroundings (quotes, brackets, tags) | Change/delete/add surroundings with simple commands | Quickly modifying code structure |
| `neoterm`                 | Terminal emulator | Multiple terminal instances, REPL integration | Running tests, shells, or REPLs without leaving Vim |
| `coc.nvim`                | Intellisense engine | LSP support, auto-completion, diagnostics | Modern IDE-like features for all languages |
| `lightline.vim`           | Lightweight status line | Customizable, shows mode, git status, LSP info | Always visible status information |
| `vim-rainbow`             | Colorful parentheses | Nested level coloring, customizable colors | Visualizing complex nested expressions |
| `nerdtree`                | File system explorer | File operations, bookmarking, filtering | Project navigation and file management |
| `vim-fugitive`            | Git wrapper | Full git functionality, diff views | Version control operations |
| `nerdcommenter`           | Code commenting | Toggle comments, align comments | Quickly commenting code blocks |
| `tokyonight-vim`          | Color scheme | Multiple variants (night, storm, etc.) | Aesthetic theming |
| `tagbar`                  | Code structure viewer | Supports multiple languages | Overview of file structure |
| `indentLine`              | Indentation guides | Customizable characters, colors | Visualizing indentation levels |
| `vim-startify`            | Start screen | Sessions, MRU files, bookmarks | Quick project access |
| `vim-easymotion`          | Motion enhancement | Jump to any visible location | Efficient navigation in large files |
| `fzf`/`fzf.vim`           | Fuzzy finder | File search, content search, preview | Fast file and content navigation |
| `fzf-funky`               | Function search | Context-aware function listing | Navigating code structure |
| `copilot.vim`             | AI pair programmer | Code suggestions, multi-line completions | Accelerating coding tasks |
| `emmet-vim`               | HTML/CSS expansion | Zen-coding abbreviations | Rapid HTML/CSS development |
| `vim-javascript`          | JS syntax | Improved highlighting, indentation | JavaScript development |
| `vim-css-color`           | Color previews | Inline color visualization | CSS/Styled Components work |
| `vim-vue`                 | Vue support | Syntax highlighting, indentation | Vue.js single file components |
| `vim-prettier`            | Code formatter | Auto-formatting, configurable | Maintaining consistent code style |

---

### 4. Configuring Copilot

#### 4.1 Keybindings Overview
- `<C-J>`: Accept Copilot's suggestion.
- `<C-K>`: View the previous suggestion.
- `<C-L>`: View the next suggestion.

#### 4.2 Authenticate Copilot
1. Run the following command in Vim:
   ```vim
   :Copilot setup
   ```
2. Follow the prompts to log in to your GitHub account and authorize Copilot.

#### 4.3 Check Authentication Status
Run the following command to check if Copilot is authenticated:
```vim
:Copilot status
```

---

### 5. Commonly Used Shortcuts

Below are the commonly used shortcuts defined in the configuration and their functionalities:

#### File Operations
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<Leader>t`        | Toggle file tree (`NERDTreeToggle`)  |
| `<Leader>f`        | Locate current file in file tree (`NERDTreeFind`) |
| `<C-p>`            | Open file search (`Files`)           |
| `<C-g>`            | Global search (`Ag`)                 |

#### Code Navigation
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<C-u>`            | Toggle tagbar (`TagbarToggle`)       |
| `<Leader>fu`       | Search for functions (`FzfFunky`)    |
| `ss`               | Quick navigation (`EasyMotion`)      |

#### Terminal Operations
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<Leader>tt`       | Toggle terminal (`Ttoggle`)          |
| `<Leader>tc`       | Clear terminal content (`Tclear`)    |
| `<Leader>tk`       | Kill terminal (`Tkill`)              |
| `<Esc>`            | Switch to normal mode in terminal    |

#### Complete The Option Selection
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<Tab>`            | Move to next option                  |
| `<S-Tab>`          | Move to previous option              |
| `<Enter>`          | Accept the option                    |

#### Window Operations
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<C-h>`            | Move to the left window              |
| `<C-j>`            | Move to the window below             |
| `<C-k>`            | Move to the window above             |
| `<C-l>`            | Move to the right window             |
| `<C-Left>`         | Decrease window width                |
| `<C-Right>`        | Increase window width                |
| `<C-Up>`           | Decrease window height               |
| `<C-Down>`         | Increase window height               |

#### Copilot Shortcuts
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<C-c>`            | Enable copilot                       |
| `<C-x>`            | Disable copilot                      |
| `<C-J>`            | Accept Copilot suggestion            |
| `<C-K>`            | View previous suggestion             |
| `<C-L>`            | View next suggestion                 |

#### Miscellaneous
| Shortcut           | Description                          |
|--------------------|--------------------------------------|
| `<C-r>`            | Reload configuration file (`source %`) |
| `jk`               | Exit insert mode (`<Esc>`)           |
| `<leader>cp`       | Open astringent board                |

---

### 6. Custom Configuration

If you need to customize the configuration, you can edit the following files:

- **Plugin Configuration**: `~/.vim/plugins.vim`
- **Keybindings Configuration**: `~/.vim/key_mappings.vim`
- **Theme Configuration**: `~/.vim/appearance_settings.vim`

For example, to change the theme:
1. Open `~/.vim/appearance_settings.vim`.
2. Modify `colorscheme` to another theme (e.g., `colorscheme gruvbox`).
3. Save and reload the configuration file (`<C-r>`).

---

### 7. Frequently Asked Questions

#### 7.1 Plugins Not Working
- Ensure you have run `:PlugInstall` to install the plugins.
- Check if your Vim version supports plugin management.

#### 7.2 `coc.nvim` Completion Not Working
- Ensure Node.js is installed.
- Install the required language servers, for example:
  ```bash
  :CocInstall coc-pyright  # Python
  :CocInstall coc-clangd   # C/C++
  ```

#### 7.3 Terminal Not Opening
- Ensure the `neoterm` plugin is installed.
- Check if the terminal is supported (e.g., `zsh` or `bash`).

#### 7.4 Copilot Not Working
- Ensure Node.js is installed.
- Check if you have logged in to your GitHub account and authorized Copilot.

---

### 8. Reference Resources

- [Vim Official Documentation](https://vimdoc.sourceforge.net/)
- [vim-plug Plugin Manager](https://github.com/junegunn/vim-plug)
- [coc.nvim Documentation](https://github.com/neoclide/coc.nvim)
- [Copilot.vim Official Documentation](https://github.com/github/copilot.vim)

---
