#!/bin/zsh
echo "$(($(($(macbook-lighter-screen --inc 0 | awk '{print $3}').0/2777))*100))" | awk '{print ($0-int($0)<0.499)?int($0):int($0)+1}'
