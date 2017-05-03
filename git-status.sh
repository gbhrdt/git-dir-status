RED='\033[0;31m'
NC='\033[0m'

for D in `ls -d -1 $PWD/**/`
do
  cd "$D"
  if [ -d ".git" ]; then
    if [[ `git status --porcelain -uno` ]]; then
      printf "${RED}LOCAL CHANGES FOUND:$NC $D\n"
    fi
  fi
  cd ".."
done

