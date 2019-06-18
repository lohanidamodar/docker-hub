#!/bin/bash
if [ ! -e package.json ]; then
    vue create my_app --default && mv my_app/.[!.]* ./ && mv my_app/* ./ && rm -rf my_app && yarn serve
elif [ -e package.json ]; then
    yarn serve
fi