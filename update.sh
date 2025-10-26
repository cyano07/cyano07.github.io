#!/bin/bash
# update.sh - Minimal Cydia repo updater

echo "🛠 Running: dpkg-scanpackages -m ./debs > Packages"
dpkg-scanpackages -m ./debs > Packages

echo "🗜 Running: gzip -k Packages"
gzip -kf Packages

echo "📦 Git add all"
git add -A

echo "💬 Git commit"
git commit -m "Update repo packages"

echo "✅ Done."
