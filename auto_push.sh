#!/bin/bash

# Navigate to your repository
cd /AutoPushGit

# Create or update a file with the current date and time
echo "Auto-update at: $(date)" >> auto_update_log.txt

# Add all changes
git add .

# Commit with a message including the current date
git commit -m "Auto-push on $(date)"

# Push the changes
git push origin main
