echo -e "================================================    Server Performance Stats    =================================================="

echo "Total CPU usage:"
top -bn1 | grep "%Cpu(s)" | awk '{print 100-$8 "%\n"}'
   

echo -e  "Total memory usage: \n "
free -h | grep "Mem" | awk '{print "Used: " $3, "Free:"$4,$3/$2*100"% \n\n"}'


echo -e  "Total disk usage:"
df -h / 
echo -e  "\n"


echo -e  "Top 5 processes by CPU usage: \n "
top -bn1 | tail -n +8 |  sort -rh -k 9 | head -n 5
echo -e  "\n"

echo -e "Top 5 processes by Memory usage: \n"
top -bn1 | tail -n +8 | sort -rh -k 10 | head -n 5


echo "===============================================            Finish          ====================================================="

