
echo "Hello $(whoami)"

export COURSE_ID="DevOpsTheHardWay"

if [ -f ~/.token ]; then
    if [ $(stat -c "%a" ~/.token) -ne 600 ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi


umask 007


export PATH=$PATH:/home/$(whoami)/usercommands


date -u +"%Y-%m-%dT%H:%M:%S%z"


alias ltxt='ls *.txt'


if [ -d ~/tmp ]; then
    rm -rf ~/tmp/*
else
    mkdir ~/tmp
fi


PID=$(lsof -t -i:8080)
if [ -n "$PID" ]; then
    kill -9 $PID
fi
