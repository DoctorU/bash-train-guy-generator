function checkandadd() {
  word="$1"
  shift
  file="$1"
  grep "^$word\$" "$file" > /dev/null || { echo "$word" >> "$file" && echo "Added $word to $file."; }
}
curl -O https://raw.githubusercontent.com/skjorrface/animals.txt/master/animals.txt
checkandadd "Pug" "animals.txt"
checkandadd "Pigeon" "animals.txt"
checkandadd "Herring" "animals.txt"
checkandadd "Cockerel" "animals.txt"
checkandadd "Trout" "animals.txt"
checkandadd "Spaniel" "animals.txt"
checkandadd "Chipmunk" "animals.txt"
checkandadd "Halibut" "animals.txt"
checkandadd "Option" "animals.txt"
curl -O https://gist.githubusercontent.com/hugsy/8910dc78d208e40de42deb29e62df913/raw/eec99c5597a73f6a9240cab26965a8609fa0f6ea/english-adjectives.txt
checkandadd "abandoned" "english-adjectives.txt"
checkandadd "disgruntled" "english-adjectives.txt"
checkandadd "vigorous" "english-adjectives.txt"
checkandadd "male" "english-adjectives.txt"
checkandadd "Edwardian" "english-adjectives.txt"
checkandadd "idle" "english-adjectives.txt"
checkandadd "buttery" "english-adjectives.txt"
checkandadd "bulky" "english-adjectives.txt"
checkandadd "viable" "english-adjectives.txt"
