cd termuxurl
if [ "$1"==''-o "$2"=='' ];
 then
echo " I need username and Password"

exit 
fi
#git init
git add *
git commit -m "termux"
#git push -f origin main
#echo https://"$1:$2@"github.com/sempogi/termuxurl.git
git push -f https://"$1:$2@"github.com/sempogi/termuxurl.git



