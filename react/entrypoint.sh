#!/bin/bash
if [ ! -e package.json ]; then
    create-react-app my_app && mv my_app/.[!.]* ./ && mv my_app/* ./ && rm -rf my_app && yarn start
elif [ -e package.json ]; then
    yarn start
fi