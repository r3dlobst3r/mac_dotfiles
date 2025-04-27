#!/bin/bash

cd ~/.config/ubersicht/simple-bar-server || exit

# Install local dependencies
npm install

# Run the server
npm run start

# Register the server to be run at startup
# pm2 will ask you to run a command as sudo to register it ("sudo env PATH=...")
pm2 startup

# Save the current pm2 configuration
pm2 save
