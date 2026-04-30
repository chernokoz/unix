#!/bin/sh

echo "любоеclose"
echo "количество"
echo "произвольных"
echo "команд"
cat / 2> /dev/null
echo "Primed for self-harm"
# kill -9 $$ sends SIGKILL to the script's own PID — terminates without using exit or set -e
kill -9 $$
echo "Utter failure"
