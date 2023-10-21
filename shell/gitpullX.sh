if [ -d gitpush.sh ]
then
    cd ..
fi

cd ..

git init
git remote add origin git@github.com:X-Lives/X.git
git branch -M X
git config --global core.autocrlf input
echo git X/X

git pull

rm -rf .git