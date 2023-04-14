#!/bin/bash

# Required parameters:
# @raycast.schemaVersion 1
# @raycast.title Dagstart
# @raycast.mode compact

# Optional parameters:
# @raycast.icon 🌅
# @raycast.packageName Dagstart

# Documentation:
# @raycast.description Dagstart
# @raycast.author Marcel Schutte

/opt/homebrew/Cellar/ical-buddy/1.10.1_1/bin/icalBuddy -npn -nc -ps "/: /" -iep "datetime,title" -po "datetime, title" -b "- [ ] " -tf "%H%M" -ic "Agenda,marceljschutte@gmail.com" eventsToday > "/users/marcelschutte/Mijn Drive/_OBSIDIAN/Marcel/__periodicNotes/temp.md"

sort "/users/marcelschutte/Mijn Drive/_OBSIDIAN/Marcel/__periodicNotes/temp.md" | uniq -i >  "/users/marcelschutte/Mijn Drive/_OBSIDIAN/Marcel/__periodicNotes/eventsForToday.md"

rm "/users/marcelschutte/Mijn Drive/_OBSIDIAN/Marcel/__periodicNotes/temp.md"

open "/System/Volumes/Data/Applications/Google Chrome.app"
open "/System/Volumes/Data/Applications/Microsoft Teams.app"
open /System/Volumes/Data/Applications/Obsidian.app
open /System/Volumes/Data/Applications/Telegram.app
open "/System/Volumes/Data/Applications/Bitwarden.app"
open "/System/Volumes/Data/Applications/IntelliJ IDEA CE.app"