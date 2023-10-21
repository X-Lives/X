if [ -d gitpush.sh ]
then
    cd ..
fi

cd X-Data
git pull
cd ..

cd X-Lives
git pull
cd ..

cd X-minorGems
git pull
cd ..

cd XY-Lives
git pull
cd ..

cd XY-minorGems
git pull
cd ..