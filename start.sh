#!/bin/bash

RTR=/home/$USER/freeRouter/rtr.jar
HWSW=$PWD'/configs/'

tmux new-session -d -s freertr-backplane 'java -jar '$RTR' routersc '$HWSW'r1-hw.txt '$HWSW'r1-sw.txt'
tmux split-window -v -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r2-hw.txt '$HWSW'r2-sw.txt' ENTER;
tmux split-window -h -t 0 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r3-hw.txt '$HWSW'r3-sw.txt' ENTER;
tmux split-window -v -t 2 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r4-hw.txt '$HWSW'r4-sw.txt' ENTER;
tmux split-window -v -t 2 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r5-hw.txt '$HWSW'r5-sw.txt' ENTER;
tmux split-window -v -t 6 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r6-hw.txt '$HWSW'r6-sw.txt' ENTER;
tmux split-window -v -t 4 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r7-hw.txt '$HWSW'r7-sw.txt' ENTER;
tmux split-window -v -t 4 -p 50
tmux send 'java -jar '$RTR' routersc '$HWSW'r8-hw.txt '$HWSW'r8-sw.txt' ENTER;
#
tmux a;
