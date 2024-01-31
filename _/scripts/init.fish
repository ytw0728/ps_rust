set -l code ./src
set -l templates ./_/templates
set -l inputs ./inputs
set -l files (ls $inputs)

rm $inputs/$files
rm $code/*

touch $inputs/1.txt
cp "$templates/source.rs" $code/main.rs

echo "Task Succeeded. Edit $code/main.rs and $inputs/1.txt."