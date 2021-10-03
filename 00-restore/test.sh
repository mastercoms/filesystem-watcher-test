#!/bin/bash
BINDIR=$(dirname "$(readlink -fn "$0")")
cd "${BINDIR}"

echo "Setting checkout.workers=2"
git config checkout.workers 2
echo "Restoring to old commit"
git restore -s 5a58c6a7d88cf18242220d07ce1f5fc506cd8b66 -- test.txt
git status
echo "Restoring to HEAD"
git restore -- test.txt
git status
echo "Updating index"
git update-index test.txt
git status
