set -l code ./src
set -l templates ./_/templates
set -l inputs ./inputs
set -l files (ls $inputs)

clear
echo "Are you sure to initialize the entire of your workspace?"
echo "Press (y/Y) to initialize"

read -n 1 -s user_input

echo $user_input
switch $user_input
    case y Y ㅛ
    case '*'
        exit 1
end

rm $inputs/$files
rm $code/*

touch $inputs/1.txt
cp "$templates/boj.rs" $code/main.rs

echo "Task Succeeded. Edit $code/main.rs and $inputs/1.txt."