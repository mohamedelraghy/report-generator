#!/bin/bash

figlet W e l c o m e

# Get the current date
currentDate=$(date +"%Y-%m-%d")

# Markdown content with dynamic date
markdownContent="# Daily Report - $currentDate

## Name: John Doe
## Position: Back-end Developer

---

## Summary
Today was a **stellar** day! I made significant progress in implementing user authentication and optimizing database queries. Moreover, I triumphed over a critical bug related to data validation. The code is buzzing, and we're making leaps and bounds towards success!

---

## Tasks Accomplished
- Implemented **rock-solid** authentication middleware for user login functionality.
- Unleashed the power of optimization to supercharge database queries.
- Crushed a critical bug related to data validation. It's now a thing of the past!

---

## Tasks Planned for Tomorrow
1. Forge the API endpoints for the new user management module. Let's shape the future!
2. Dive deep into research and experimentation to discover a groundbreaking caching strategy for database queries. Innovation awaits!

---

## Blockers/Issues Encountered
- Stumbled upon a puzzling challenge while integrating the third-party payment gateway. Fear not! I'm diligently investigating the root cause to unveil the solution.

"

# create directory for reports if not exists

dir="/home/$USER/Desktop/daily-report"

if [ -d "$dir" ]; then
  echo "Directory exists."
else
  echo "Directory does not exist."
  mkdir $dir
fi

# Write the Markdown content to a file
echo "$markdownContent" >$dir/"daily_report_$currentDate.md"

echo "Daily report generated successfully!"

code $dir/"daily_report_$currentDate.md"

figlet d o n e
