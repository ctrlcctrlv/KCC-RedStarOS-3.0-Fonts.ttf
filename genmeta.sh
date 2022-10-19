#!/bin/bash
fc-list : fullname file fontversion fontformat postscriptname foundry capability slant charset lang decorative prgname | grep KP > fc-list.txt
rg --pcre2 '^\s*(V|\(c\))'|sort|uniq > versions.txt
