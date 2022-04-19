#!/bin/bash

printf -v date '%(%Y-%m-%d)T' -1
if [[ ! -f ${date}_standup.md ]]; then
    echo "# ${date} Daily Standup -- Team Epimetheus" | cat - template.md > ${date}_standup.md
fi
code ${date}_standup.md