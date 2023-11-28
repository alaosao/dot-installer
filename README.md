# Dotfile Installer

## Overview

This is a simple and customizable dotfile installer designed to streamline the process of setting up your personalized configuration files across different systems. Dotfiles typically contain configurations for various tools and applications, and managing them efficiently can be crucial for a consistent development environment.

The dotfile installer provides an organized and extensible way to deploy your configuration files on a new machine. It supports Arch-based Linux distributions and can be easily customized to suit your specific needs.

## Features

- **Easy Installation**: Quickly set up your dotfiles on a new system with a single command.
- **Customizable**: Configure which dotfiles to install and where to place them.
- **Version Control**: Keep your dotfiles in a version-controlled repository for easy updates and sharing.
- **Platform Support**: Works on Arch-based Linux distributions.

## Getting Started

### Prerequisites

1. **Git**: Make sure Git is installed on your system.

### Installation

1. Clone this repository to your local machine:

   ```bash
   git clone https://github.com/cinqlorem/dot-installer.git
   ```
   
2. Run the installer script:

   ```bash
   ./installer.sh
   ```

   This script will symlink the dotfiles to your home directory.

## Customization

1. Add your dotfiles to the `~dotfiles` directory.
2. Customize the `installer.sh` script to specify which dotfiles to symlink and where to place them.

## Updating Dotfiles

1. Pull the latest changes from the repository:

   ```bash
   git pull origin master
   ```

2. Run the installer script again to update your dotfiles:

   ```bash
   ./installer.sh
   ```

## Contributing

If you have improvements or additional features to suggest, feel free to open an issue or submit a pull request.

## License

This project is licensed under the MIT License - see the [LICENSE](LICENSE) file for details.

## Acknowledgments

- Inspiration from [dotfiles.github.io](https://dotfiles.github.io/) and the dotfiles community.

Happy coding! 🚀
