# Pantsmacs

**DISCALIMER: I know very little elisp. This config gets it done and no more; no bells and whistles.**

# Introduction

> Vim-ish emacs for those tired of the command line life-style.

Pantsmacs is a configuration of [GNU Emacs](https://gnu.org/software/emacs) from 
this century for people who like efficency and beauty;

Its core tenets are as follows:

+ **Visual clarity.** A good looking editor doesn't have the brightest colors or 
the most icons, but that a good looking editor is visually consistent; 
informative, but not overwhelming; and functional without sacrificing any visual 
aestethics.
+ **Keybind brevity.** Important keybinds should be easy. `SPC cc` is recompile
and `SPC cC` is compile, because you use recompile 10x more than compile, so it 
should be easier to type.

# Quick install

This command will move your previous emacs configuration to `~/.emacs.d.bak` and clone pantsmacs to `~/.emacs.d`
```sh
mv ~/.emacs.d ~/.emacs.d.bak
git clone https://github.com/pants721/pantsmacs.git ~/.emacs.d
```

Welcome to Pantsmacs!

To uninstall just move `~/.emacs.d.bak` back to `~/.emacs.d`. You can figure it out, I'm not your dad.

# Features

- Evil-centric interface (I genuinely do not use the Ctrl key).
- Phonetic leader maps (general.el).
- Decent class language support for the languages I like (eglot).
- New daily theme thanks to my indecision.
- Great minibuffer completion.
- Issues fixed quickly. I have a bad habit of touching my config daily, so if something bothers me (or you), I WILL fix it.

# Weaknesses

- Extremely opinionated.
- Tested on Linux only, as it is the only OS I code on.
- Note very customizable yet. As this is a *personal* config, I haven't, and don't plan to, put much time or effort into the customization of pantsmacs.
- Sooooo vim biased. Anything that isn't a leader bind, I do by using `:`.
- Lack of maturity. I am a young person right now. I started emacs this year and I started coding last year (relative to the creation of this config).

# Inspiration

## [Purcell emacs](https://github.com/purcell/emacs.d)
    
I modeled the file structure of pantsmacs after purcell's emacs.d. Although I never looked at any of the code beyond elisp mannerisms, merci Steve!

## [Doom emacs](https://github.com/doomemacs/doomemacs)

I used doom emacs for a few months and it served me very well. Eventually, I found that the distro was too opinionated towards opinions I personally didn't share, and had a lot of packages and features I found unnecessary. This is to no fault of doom emacs itself, but to my preferences. Now here's what I did like about doom emacs. 
- It seems that doom emacs is built for programmers like me who grew up on a command line, but turned to the dark side.
- I like how doom emacs tends to just work. Unlike spacemacs, no matter how much I tried to change doom from its original configuration, it would still work. I do believe a large part of this is because it seperated user-config from the actual configurations of the distro.
- **It keeps distro and user config quarantined**. As of now, I haven't implemented this much in pantsmacs. All user-config is in init-user.el, but a single file isn't really reflective of project philosophy. I would love to integrate user config to be kept in a completely seperate directory and compiled to ~/.emacs.d with some sort of `pants sync` command, but I'm not quite there yet.
- I like that doom emacs isn't afraid to be opinionated. Pantsmacs follows this because it is first and foremost my *personal* config. I would like to make it more easily customized (i.e. disabling modules, adding your own) if the project were to gain any traction, but not for now.

I also got lots of README ideas from doom emacs' README.

Spacemacs was an elementary school (single-file) crush, Doom was my highschool sweetheart, but it is time for marriage; and marriage should be a perfect fit. So thank you doom emacs for everything you taught me.

# Major change log

- 1.0 Initial release.
- 2.0 Basic multiple file config; correct use-package usage; maybe some lsp later, but not for now.
- 3.0 Buncha new packages; lsp (eglot).
