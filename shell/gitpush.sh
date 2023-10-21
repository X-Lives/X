DN="$1"
if [ "$1" = "" ]
then
    echo directory_name?
    read DN
fi
if [ "$1" = ".git" ]
then
    echo '$1='$1
    echo 'Error1: ".git" is not a ture name'
    echo directory_name?
    read DN
fi
if [ "$1" = "X" ]
then
    echo '$1='$1
    echo 'Error2: "X" is not a ture name'
    echo directory_name?
    read DN
fi

if [ ! -e $DN ]
then
    if [ -d "log" ]
    then
        echo Located at $DN ? will cd ..
        cd ..
        if1="1"
    else
        echo Located at $DN/shell ? - will cd ../..
        cd ../..
    fi
    if [ ! -e $DN ]
    then
        echo Error3: Not Found $DN
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

cp -rf $DN/* X/
cd X

if [ "$if1" = "1" ]
then
    rm -f gitpush.sh
fi

if [ ! -e .git ]
then
    git init
    git remote add origin git@github.com:X-Lives/X.git
    git branch -M X
    git config --global core.autocrlf input
    echo git X/X
fi

rm -rf X-Data/.git

rm -rf X-Lives/.git

rm -rf X-minorGems/.git

rm -rf XY-Lives/.git

rm -rf XY-minorGems/.git

echo git?[Y/n]
read git
## --y--
if [ "$git" = "y" ]
then
    git add .
    echo commit?[Enter to default]
    read commit
    if [ "$commit" = "" ]
    then
        git commit -m "X: updata"
        git push
        exit 1
    fi
    git commit -m "$commit"
    git push
    exit 1
fi
## ---
if [ "$git" = "Y" ]
then
    git add .
    echo commit?[Enter to default]
    read commit
    if [ "$commit" = "" ]
    then
        git commit -m "X: updata"
        git push
        exit 1
    fi
    git commit -m "$commit"
    git push
    exit 1
fi
## ---
if [ "$git" = "yes" ]
then
    git add .
    echo commit?[Enter to default]
    read commit
    if [ "$commit" = "" ]
    then
        git commit -m "X: updata"
        git push
        exit 1
    fi
    git commit -m "$commit"
    git push
    exit 1
fi
## ---
if [ "$git" = "Yes" ]
then
    git add .
    echo commit?[Enter to default]
    read commit
    if [ "$commit" = "" ]
    then
        git commit -m "X: updata"
        git push
        exit 1
    fi
    git commit -m "$commit"
    git push
    exit 1
fi
## --n--
if [ "$git" = "n" ]
then
    echo will exit
    exit 1
fi
## ---
if [ "$git" = "N" ]
then
    echo will exit
    exit 1
fi
## ---
if [ "$git" = "no" ]
then
    echo will exit
    exit 1
fi
## ---
if [ "$git" = "No" ]
then
    echo will exit
    exit 1
fi