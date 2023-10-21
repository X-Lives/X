if [ "$1" = "" ]
then
    echo $0 directory_name
    exit 1
fi

if [ ! -e X-All ]
then
    cd ../..
    if [ ! -e X-All ]
    then
        echo error
        exit 1
    fi
fi

if [ ! -e X ]
then
    mkdir X
fi
if [ -d X ]
then
    rm -rf X/*
fi

cp -rf $1/* X/
cd X
mkdir .git
cp -rf ../$1/.git/* .git/

rm -rf X-Data/.git

rm -rf X-Lives/.git

rm -rf X-minorGems/.git

rm -rf XY-Lives/.git

rm -rf XY-minorGems/.git
