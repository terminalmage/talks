zsh:
  pkg.installed

moe:
  user.present:
    - uid: 1337
    - shell: /usr/bin/zsh

larry:
  user.present

curly:
  user.present
