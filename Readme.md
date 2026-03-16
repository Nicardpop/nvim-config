## Screenshot 
<img src="https://github.com/Nicardpop/nvim-config/blob/main/assets/nvim-setup.png"/>

# Neovim / Vim Keybind Cheat Sheet

This cheat sheet contains the most important text editing, navigation, and mode switching keybinds in Neovim and Vim.

---

# Modes

## Main Modes

| Mode | Description |
|-----|-------------|
| Normal | Default mode for navigation and commands |
| Insert | Typing text |
| Visual | Selecting text |
| Command | Running commands |

---

# Switching Between Modes

| Key | From Mode | To Mode | Action |
|----|-----------|---------|------|
| i | Normal | Insert | Insert before cursor |
| a | Normal | Insert | Insert after cursor |
| o | Normal | Insert | New line below |
| O | Normal | Insert | New line above |
| I | Normal | Insert | Insert at start of line |
| A | Normal | Insert | Insert at end of line |
| Esc | Insert / Visual | Normal | Return to normal mode |
| v | Normal | Visual | Character selection |
| V | Normal | Visual Line | Select whole lines |
| Ctrl + v | Normal | Visual Block | Column selection |
| : | Normal | Command | Open command line |
| / | Normal | Search | Start search |

---

# Essential Editing Commands

| Key | Mode | Action |
|----|------|------|
| u | Normal | Undo |
| Ctrl + r | Normal | Redo |
| x | Normal | Delete character |
| dd | Normal | Delete line |
| D | Normal | Delete to end of line |
| dw | Normal | Delete word |
| d$ | Normal | Delete to end of line |
| d0 | Normal | Delete to start of line |
| yy | Normal | Copy (yank) line |
| yw | Normal | Copy word |
| p | Normal | Paste after cursor |
| P | Normal | Paste before cursor |

---

# Change Commands

| Key | Mode | Action |
|----|------|------|
| cc | Normal | Change whole line |
| cw | Normal | Change word |
| C | Normal | Change to end of line |
| s | Normal | Delete character and insert |
| S | Normal | Change whole line |

---

# Insert Mode Commands

| Key | Mode | Action |
|----|------|------|
| i | Normal | Insert before cursor |
| a | Normal | Insert after cursor |
| I | Normal | Insert at start of line |
| A | Normal | Insert at end of line |
| o | Normal | New line below |
| O | Normal | New line above |

---

# Visual Mode Editing

| Key | Mode | Action |
|----|------|------|
| v | Normal | Start visual selection |
| V | Normal | Select line |
| Ctrl + v | Normal | Block selection |
| d | Visual | Delete selection |
| y | Visual | Copy selection |
| p | Visual | Replace selection with paste |

---

# Word and Line Manipulation

| Key | Mode | Action |
|----|------|------|
| ~ | Normal | Toggle case |
| gU | Visual | Uppercase selection |
| gu | Visual | Lowercase selection |
| >> | Normal | Indent line |
| << | Normal | Unindent line |

---

# Repeat and Count Commands

| Key | Mode | Action |
|----|------|------|
| . | Normal | Repeat last change |
| 3dd | Normal | Delete 3 lines |
| 5x | Normal | Delete 5 characters |

Example:
