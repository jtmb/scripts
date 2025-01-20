#!/bin/bash

# Assigning arguments to variables
DISCORD_WEBHOOK=$1

# Send a message to Discord
curl -X POST -H "Content-Type: application/json" \
  -d "{\"username\":\"$(head /dev/urandom | tr -dc A-Za-z0-9 | head -c 10)\", \"content\":\"$(curl -s 'https://evilinsult.com/generate_insult.php?lang=en&type=text')\"}" \
  "$DISCORD_WEBHOOK"
