# cur

Manage a `~/current` symlink that points to your working directory. Switch projects by updating one symlink instead of remembering paths.

## Install

```sh
make install              # installs to /usr/local/bin (needs sudo)
sudo make install         # same, explicit
make install PREFIX=~     # installs to ~/bin (no sudo)
```

Or copy it manually:

```sh
cp cur /usr/local/bin/cur
chmod 755 /usr/local/bin/cur
```

## Usage

```
cur             Set ~/current -> $PWD
cur show        Show where ~/current points
cur go          Start a subshell in ~/current
cur force       Replace ~/current even if it is a real directory
cur unset       Remove the ~/current symlink
cur help        Print usage
```

### Shell function for instant `cd`

Add this to your `.bashrc` or `.zshrc` so you can jump to `~/current` without spawning a subshell:

```sh
c() {
  [ -L "$HOME/current" ] && cd "$(readlink -f "$HOME/current")" \
    || echo "No ~/current symlink."
}
```

Then just run `c` from anywhere.

## Uninstall

```sh
make uninstall              # removes from /usr/local/bin
make uninstall PREFIX=~     # removes from ~/bin
```

## License

[MIT](LICENSE)
