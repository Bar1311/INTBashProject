# your solut# Greet the user
echo "Hello $(whoami)"

# Define an environment variable
export COURSE_ID="DevOpsTheHardWay"

# Check the permissions of the .token file
if [ -f ~/.token ]; then
    if [ $(stat -c "%a" ~/.token) -ne 600 ]; then
        echo "Warning: .token file has too open permissions"
    fi
fi

# Set the umask
umask 007

# Add usercommands to the PATH
export PATH=$PATH:/home/$(whoami)/usercommands

# Print the current date in ISO 8601 format with UTC timezone
date -u +"%Y-%m-%dT%H:%M:%S%z"

# Define an alias
alias ltxt='ls *.txt'

# Create or clean the ~/tmp directory
if [ -d ~/tmp ]; then
    rm -rf ~/tmp/*
else
    mkdir ~/tmp
fi

# Kill the process bound to port 8080 if it exists
PID=$(lsof -t -i:8080)
if [ -n "$PID" ]; then
    kill -9 $PID
fi
ion here...