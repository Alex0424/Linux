# Vim

## How to edit or create a file with Vim text editor

```
$ vim file.txt    #create a text file and open it in vim
```

# Default commands (when your editing in vim)
- Insert mode(edit): `i`
- Insert mode & create new line under cursor(edit): `o`
- Save file: `esc` then `:w` then `Entre`
- Quit file: `esc` then `:q` then `Entre`
- Quit file with force: `esc` then `:q!` then `Entre`
- Save & Quit file: `esc` then `:wq` then `Entre` OR `esc` then `:x` then `Entre`
- Set numbers: `esc` then `:se num`
- Go to last line: `Shift` + `G`
- Go to first line: `gg`
- copy line: `yy` OR `3` * `yy` to copy 3 lines
- copy multiple lines: `Shift` + `V` then use `j` to move down `k` to move up
- copy lines 10 to 20 do: `:10,20y`
- paste line above: `Shift` + `P`
- paste line under: `p`
- cut line: `dd`
- search: `/s`
- undo: `u`
- redo: `Ctrl` + `R`
- replace all words `:%s/name/new_name/g` 
- search and replace `:%s/name.main/name\.rg/g`
