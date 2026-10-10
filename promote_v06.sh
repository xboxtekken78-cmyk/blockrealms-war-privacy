#!/usr/bin/env bash
# Run when v0.6 (with INTERNET + leaderboard) is submitted to Play: makes the
# v0.6 policy the main page (same URL Play already has).
set -e; cd "$(dirname "$0")"
cp v0.6/index.html index.html && cp v0.6/privacy_policy.md README.md
git add index.html README.md && git -c user.name=Cennetolsun -c user.email=vtoprak78@gmail.com commit -qm "Privacy policy v0.6 (World Records leaderboard)" && git push -q && echo promoted
