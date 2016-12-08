#!/bin/bash

# this assumes that anki runs on Mac OS
sqlite3 "$HOME/Documents/Anki/User 1/collection.anki2" 'select count(flds) from notes;'
