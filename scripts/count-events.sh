tot=0
while read f; do
    nevents=$(edmEventSize -v $f | grep Events |  awk '{print $NF}')
    echo $nevents
    tot=$(( tot + nevents ))
done < /code/recid77fixed.txt
echo $tot