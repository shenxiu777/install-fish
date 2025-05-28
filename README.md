# Install Fish Shell

This repository provides a bash script to automate the installation and configuration of the [Fish shell](https://fishshell.com/) on systems using `apt` (e.g., Ubuntu, Debian). The script installs Fish, sets it as the default shell for the current user, and downloads a custom Fish configuration file.

## Features
- Installs Fish without requiring confirmation.
- Sets Fish as the default shell for the current user without a password prompt (using `sudo`).
- Creates the Fish configuration directory if it doesn't exist.
- Downloads a custom `config.fish` file with predefined settings (e.g., custom `ls` aliases, key bindings, and time format).
- Ensures proper permissions for the configuration files.

## Prerequisites
- A system with `apt` package manager (e.g., Ubuntu, Debian).
- `sudo` privileges (the script must be run with `sudo`).
- Internet access to download the script and the Fish configuration file.
- `curl` installed (usually pre-installed on most systems).

## One-Click Installation
Run the following command to download and execute the script in one step:

```bash
curl -sL https://github.com/shenxiu777/install-fish/raw/refs/heads/main/install-fish.sh | sudo bash
```

This command:
1. Downloads the script using `curl`.
2. Pipes it directly to `sudo bash` for execution.
3. Installs Fish, sets it as the default shell, and applies the configuration.

**Note**: You may be prompted for your `sudo` password.

## Manual Installation
1. Download the script:
   ```bash
   curl -o install-fish.sh https://github.com/shenxiu777/install-fish/raw/refs/heads/main/install-fish.sh
   ```
2. Make it executable:
   ```bash
   chmod +x install-fish.sh
   ```
3. Run the script with `sudo`:
   ```bash
   sudo ./install-fish.sh
   ```

## Configuration
The script downloads a `config.fish` file to `~/.config/fish/config.fish` with the following settings:
- Aliases: `l` for `ls -lh` and `ll` for `ls -alh`.
- Time format: Displays dates as `YYYY-MM-DD HH:MM:SS`.
- Key bindings: `Ctrl+Delete` to kill the next word, `Ctrl+Backspace` to kill the previous word.

The configuration file is hosted at a URL specified in the script (update the script if you host it elsewhere).

## Notes
- Run the script with `sudo` to avoid permission issues when installing Fish and changing the shell.
- The script assumes Fish is installed to `/usr/bin/fish` (standard for `apt`).
- If the Fish configuration directory (`~/.config/fish`) doesn't exist, the script creates it.
- Ensure the `config.fish` file is hosted at a publicly accessible URL and update the script's `curl` command if needed.

## Troubleshooting
- **Permission denied**: Ensure you run the script with `sudo`.
- **Fish not found**: Verify that `apt` is available and your system is connected to the internet.
- **Config file not downloaded**: Check that the `config.fish` URL is correct and accessible.

## License
This project is licensed under the MIT License. See the [LICENSE](LICENSE) file for details.