#!/bin/bash
cd /src/dotplan/plans
for filename in *; do
    case "${filename,,*}" in 
        *20.plan) mv "$filename" "2020" ;;
        *19.plan) mv "$filename" "2019" ;;
        *) echo "not sure what you're doing here" ;;
    esac
done