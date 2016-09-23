#!/bin/sh
echo "run dropbox service in background"
exec ./.dropbox-dist/dropboxd &

echo "start the jupyter notebook"
jupyter notebook
