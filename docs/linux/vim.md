# Vim

## How to edit or create a file with the Vim text editor

```
$ vim file.txt    # create a text file and open it in Vim
```

# Common commands (while editing in Vim)
- Enter insert mode (edit): `i`
- Enter insert mode and create a new line below the cursor: `o`
- Save file: `Esc` then `:w` then `Enter`
- Quit file: `Esc` then `:q` then `Enter`
- Quit file without saving: `Esc` then `:q!` then `Enter`
- Save and quit: `Esc` then `:wq` then `Enter` OR `Esc` then `:x` then `Enter`
- Show line numbers: `Esc` then `:set number` (or `:se nu`)
- Go to the last line: `Shift` + `G`
- Go to the first line: `gg`
- Copy a line: `yy` (or `3yy` to copy 3 lines)
- Select multiple lines (visual line mode): `Shift` + `V` then use `j`/`k` to move down/up
- Copy lines 10 to 20: `:10,20y`
- Paste line above: `Shift` + `P`
- Paste line below: `p`
- Cut (delete) a line: `dd`
- Search for a pattern: `/pattern` then `Enter`
- Undo: `u`
- Redo: `Ctrl` + `R`
- Replace all occurrences of a word: `:%s/name/new_name/g`
- Replace a literal dot in a pattern (example: replace `name.main` with `name.rg`): `:%s/name\.main/name\.rg/g`
