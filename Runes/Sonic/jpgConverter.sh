#!/bin/bash
for filename in *.pdf; do
    echo $filename
    name=$(echo "$filename" | cut -f 1 -d '.')
    echo $name
    /usr/bin/pdftoppm -jpeg $filename $name
done