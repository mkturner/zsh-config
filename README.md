# zsh-config

![shell session screenshot](https://cloud.githubusercontent.com/assets/8616618/7666843/a02c2682-fbc1-11e4-9a91-a7adfbec27d4.png)
YMMV depending on your terminal and theme.
I'm using iTerm2 with the ToyChest theme.

Hello World! The purpose of this repo is two-fold:
1. backup my configuration files for oh-my-zsh
1. share my files to inspire someone else who wants the same thing

## Changes
batcharge.py:
- Now works with python2 && python3 (previously only python2)
- changed from triangles to circles to mimic iOS

doubleend.zsh-theme:
- batcharge.py's output is at the end of $PROMPT instead of $RPROMPT
- 3 lines: newline (readability), dir/git/bat info, env/command space
- puts info about active env where I want it instead of printing before newline

.zshrc:
- many aliases and functions
- specifically, the `mkcd` and `mkcg` are timesavers
- `activate` saves keystrokes, but assumes (pyenv, pyenv-virtualenv, virtualenv) exist
- `browsers` assumes safari, firefox, opera... can be extended if you use chrome. useful for web dev
- `py`/`py3` because typing python and python3 are way too long [pattern, much?]
- `djangover` py2/py3 compat. because sometimes you just need to know


## Credit
I believe in giving credit.
Though right now I'm too lazy to go back an pull up the necessary info
Stay tuned!

## License
MIT License
<!-- Copyright (c) 2015 Marvin T.

Permission is hereby granted, free of charge, to any person obtaining a
copy of this software and associated documentation files (the "Software"),
to deal in the Software without restriction, including without limitation
the rights to use, copy, modify, merge, publish, distribute, sublicense,
and/or sell copies of the Software, and to permit persons to whom the
Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING
FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER
DEALINGS IN THE SOFTWARE.
 -->
