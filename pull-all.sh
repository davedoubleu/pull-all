#Identifies all sub folders as git repositiories and pulls them 
echo
echo "---------------------------------"
echo THERE ARE $(ls -l | grep "^d" | wc -l) REPOSITORIES LOCATED
echo HERE\: $(pwd)
for d in */ ; do
  echo ...$d
done
echo "---------------------------------"
for d in */ ; do
echo PULLING... $d
cd $d
if (git pull | grep 'Already up-to-date') then
    message="RESULT: "$d" was Already Up-To-Date"
else
    if (git pull | grep 'Already up-to-date') then
        echo "Pulling again to check its up-to-date."
        message="RESULT: "$d" IS NOW UP-TO-DATE"
    else
        message="RESULT: "$d" SOMETHING BROKE!!!"
    fi
fi
echo $message
echo "---------------------------------"
cd ..
done
echo
