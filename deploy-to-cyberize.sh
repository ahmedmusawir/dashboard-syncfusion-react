#!/bin/bash

SOURCE="/Users/moose/Documents/react-apps/dashboard-syncfusion-react/build"
TARGET="root@cyberizestaging.com:/var/www/vhosts/cyberizestaging.com/dashboard.cyberizestaging.com"
REMOTE_FOLDER="/var/www/vhosts/cyberizestaging.com/dashboard.cyberizestaging.com/*"

echo "--------------------------------------"
echo "Removing old files..."
echo "--------------------------------------"
ssh root@cyberizestaging.com "rm -rf $REMOTE_FOLDER"


echo "--------------------------------------"
echo "Transfering new files..."
echo "--------------------------------------"
scp -r $SOURCE/* $TARGET/

echo "--------------------------------------"
echo "File transfer complete!"
echo "--------------------------------------"