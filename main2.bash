mkdir web_monitor_log
cd web_monitor_log
touch Web_log.csv  #Final output
touch WebLog.csv
wget https://raw.githubusercontent.com/Yingzzzzz/ccccc/main/directory.bash
 while :
      do

            chmod +x directory.bash
            ./directory.bash  &
# Get its PID
            PID=$!
# Wait for 2 seconds
            sleep 0.01
# Kill it
            kill $PID

 
#duplicate
           awk -F '|' '!x[$1]++' WebLog.csv > Web_Log.csv
#output
           sed -i 's/\s\+/,/g' Web_Log.csv
           awk -F '|' '!x[$1]++' Web_Log.csv
     done

