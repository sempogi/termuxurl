cd termuxurl
if [ -z "$1" ];
 then
echo " I need username and Password"
exit 
elif [ -z "$2" ];
then
echo " I need a Password"
else
echo "Processing....."
fi
#git init
git add *
git commit -m "termux"
#git push -f origin main
#echo https://"$1:$2@"github.com/sempogi/termuxurl.git
git push -f https://"$1:$2@"github.com/sempogi/termuxurl.git



