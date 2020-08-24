#!/bin/bash

# A script that opens a browser and googles the given string

str=$1
QUERY=${str// /+}
xdg-open https://www.google.com/search?q=$QUERY