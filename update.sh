
git pull origin master

git submodule update
git submodule foreach git pull origin master
git commit -m "updating packages"
