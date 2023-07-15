#!/bin/bash

currentDate=$(date +"%Y-%m-%d")

dir="/home/$USER/Desktop/daily-report"

pandoc $dir/"daily_report_$currentDate.md" -o $dir/"daily_report_$currentDate.pdf"
