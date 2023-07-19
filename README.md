# Pantsmacs
> Vim-ish emacs for those tired of the command line life-style

**DISCALIMER: I know very little elisp, this config gets it done and no more. No bells and whistles.**

## Quick install

This command will move your previous emacs configuration to `~/.emacs.d.bak` and clone pantsmacs to `~/.emacs.d`
```sh
mv ~/.emacs.d ~/.emacs.d.bak
git clone https://github.com/pants721/pantsmacs.git ~/.emacs.d
```

To uninstall just mv `~/.emacs.d.bak` back. You can figure it our, I'm not your dad.

## Major change log

- 1.0 initial
- 2.0 basic multiple file config; correct use-package usage; maybe some lsp later, but not for now
- 3.0 Buncha new packages; lsp (eglot)
