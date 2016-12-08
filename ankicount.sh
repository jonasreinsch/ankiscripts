#!/bin/bash

# Prints the number of cards in your Anki deck.
# This assumes Mac OS.
sqlite3 "$HOME/Documents/Anki/User 1/collection.anki2" 'select count(flds) from notes;'
