# Shell script to change file extensions.
#!/bin/bash
if [[ $1 && $2 ]]; then # taking format extension from the user
for x in *.$1; do
t=${x%.$1}.$2
mv $x $t && echo "changed $x -> $t"
done
else
echo "Please enter args correctly"
echo "Usage ./filename ext1 ext2"
fi

