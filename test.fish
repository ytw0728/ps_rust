set -l inputs ./inputs
set -l files (ls $inputs)

for file in files
  cargo run --silence < $inputs/$file
end

