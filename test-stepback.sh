perl -i -pe 's/(?<!#)exit 1/#exit 1/g' evergreen.yml

git commit --allow-empty -m "1"
git commit --allow-empty -m "2"
git commit --allow-empty -m "3"
git commit --allow-empty -m "4"
git commit --allow-empty -m "5"
git commit --allow-empty -m "6"
git commit --allow-empty -m "7"
git commit --allow-empty -m "8"
git commit --allow-empty -m "9"
git commit --allow-empty -m "10"

perl -i -pe 's/#exit 1/exit 1/g' evergreen.yml
git commit -m "Failing commit"

perl -i -pe 's/(?<!#)exit 1/#exit 1/g' evergreen.yml