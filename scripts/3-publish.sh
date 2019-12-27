#!/usr/bin/env bash

echo '[+] Committing and pushing changes to Git'

git config user.email "dev@bizon.solutions"
git config user.name "Bizon Bot"
git add src doc
git commit -m 'Update MWS documentation' || true
git push origin master

echo '[+] Done'
