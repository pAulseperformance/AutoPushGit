#!/bin/bash

# Navigate to your repository
cd /AutoPushGit

# Add all changes
git add .

# Commit with a message including the current date
git commit -m "Auto-push on $(date)"

# Push the changes
git push origin main
