# anav.nvim

This is my web development Neovim config, all written in lua. The `lua/core` directory holds the main global config, while the `lua/plugins` directory holds the config for each plugin. All plugins open in a floating window and the theme used is Gruvbox.


[demo.webm](https://github.com/user-attachments/assets/310131b2-75e7-4829-a7ef-34ff901aa67e)

## Features

- File explorer (nvimtree)
- Fuzzy finder (telescope)
- Synatx highlighting (treesitter)
- Autocomplete (lspconfig + nvimcmp)
- AI completion (GitHub copilot)
- Multiple terminals (toggleterm)
- Version control (lazygit + gitsigns)
- Save progress (auto sessions)

## Getting Started

Requirements: Neovim, Git, Docker, NPM, GCC, Golang, Python, Cargo, Maven, OpenJDK.

Clone the repository into your Neovim configuration directory by running the following command:

```bash
# Linux/MacOS
git clone https://github.com/anav5704/anav.nvim.git ~/.config/nvim

# Windows
git clone https://github.com/anav5704/anav.nvim.git C:/Users/username/AppData/Local/nvim
```
When you open Neovim, the package manager will install all the required plugins and dependencies for your setup.

If you are on Windows, you will have to add the following code to your terminals `settings.json`:

```json
{
    "actions": [
        {
            "keys": "ctrl+space",
            "command": {
                "action": "sendInput",
                "input": "\u001b[32;5u"
            }
        }
    ]
}
```
## Learning Resources

- [Neovim in 100 seconds](https://youtu.be/c4OyfL5o7DU)
- [Vim as your editor](https://youtube.com/playlist?list=PLm323Lc7iSW_wuxqmKx_xxNtJC_hJbQ7R)
- [Advent of Neovim](https://youtube.com/playlist?list=PLep05UYkc6wTyBe7kPjQFWVXTlhKeQejM)


