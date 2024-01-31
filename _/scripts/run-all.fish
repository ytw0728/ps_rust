set -l inputs ./inputs
set -l files (ls $inputs)

clear

for file in $files
    echo "[inputs] $file"
    cat $inputs/$file
    echo -e "\n"
    echo "[outputs]"
    RUSTFLAGS=-Awarnings cargo run --quiet < $inputs/$file
    echo -e "\n"
end