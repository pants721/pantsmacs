# Pantsmacs
> Vim-ish emacs for those tired of the command line life-style

**DISCALIMER: I know very little elisp, this config gets it done and no more. No bells and whistles.**

## Quick install

This command will move your previous emacs configuration to `~/.emacs.d.bak` and clone pantsmacs to `~/.emacs.d`
```sh
mv ~/.emacs.d ~/.emacs.d.bak
git clone https://github.com/pants721/pantsmacs.git ~/.emacs.d
```

To uninstall just mv `~/.emacs.d.bak` back. You can figure it out, I'm not your dad.

## Features

- Evil-centric interface (I genuinely do not use the Ctrl key)
- Phonetic leader maps (general.el)
- Decent class language support for the languages I like (eglot)
- New daily theme thanks to my indecision

## Inspiration

### [Purcell emacs](https://github.com/purcell/emacs.d)
    
I modeled the file structure of pantsmacs after purcell's emacs.d. Although I never looked at any of the code beyond elisp mannerisms, merci Steve!

### [Doom emacs](https://github.com/doomemacs/doomemacs)

I used doom emacs for a few months and it served me very well. Eventually, I found that the distro was too opinionated towards opinions I personally didn't share, and had a lot of packages and features I found unnecessary. This is to no fault of doom emacs itself, but to my preferences. Now here's what I did like about doom emacs. 
- It seems that doom emacs is built for programmers like me who grew up on a command line, but turned to the dark side.
- I like how doom emacs tends to just work. Unlike spacemacs, no matter how much I tried to change doom from its original configuration, it would still work. I do believe a large part of this is because it seperated user-config from the actual configurations of the distro.
- **It keeps distro and user config quarantined**. As of now, I haven't implemented this much in pantsmacs. All user-config is in init-user.el, but a single file isn't really reflective of project philosophy. I would love to integrate user config to be kept in a completely seperate directory and compiled to ~/.emacs.d with some sort of `pants sync` command, but I'm not quite there yet.
- I like that doom emacs isn't afraid to be opinionated. Pantsmacs follows this because it is first and foremost my *personal* config. I would like to make it more easily customized (i.e. disabling modules, adding your own) if the project were to gain any traction, but not for now.

Pantsmacs 1.0 was an elementary school (single-file) crush, doom emacs was my highschool sweetheart, but it is time for marriage; and marriage should be a perfect fit. So thank you doom emacs for everything you taught me.

## Major change log

- 1.0 initial
- 2.0 basic multiple file config; correct use-package usage; maybe some lsp later, but not for now
- 3.0 Buncha new packages; lsp (eglot)
