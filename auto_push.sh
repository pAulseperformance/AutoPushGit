#!/bin/bash

# Get the current day of the week (0=Sunday, 1=Monday, etc.)
day_of_week=$(date +%u)

# If today is Sunday, exit the script (skip the commit process)
if [ "$day_of_week" -eq 7 ]; then
  exit 0
fi

# Navigate to your repository
cd /AutoPushGit

# Get a random number of commits (between 1 and 50)
num_commits=$((RANDOM % 50 + 1))

# Loop through and make the commits, spaced out by 5 minutes
for ((i=1; i<=num_commits; i++))
do
  # Create or update a file with the current date and time
  echo "Auto-update #$i at: $(date)" >> auto_update_log.txt
  
  # Add the file to the commit
  git add auto_update_log.txt

  # Commit the changes with a message including the current date and time
  git commit -m "Auto-push #$i with timestamp on $(date)"
  
  # Push the changes to the remote repository
  git push origin main

  # Wait 5 minutes before the next commit
  sleep 300
done
