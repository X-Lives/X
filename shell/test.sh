DN="$1"
if [ "$1" = "" ]
then
    echo directory_name?
    read DN
fi
if [ "$1" = ".git" ]
then
    echo '".git" is not a ture name'
    echo directory_name?
    read DN
fi
echo '$1'=$1
echo $1
echo $DN