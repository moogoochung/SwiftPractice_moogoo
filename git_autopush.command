#!/bin/zsh

cd "$(dirname "$0")"

git add .
git commit -m "자동 커밋: $(date '+%Y-%m-%d %H:%M:%S')"
git push