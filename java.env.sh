#!/usr/bin/bash
ROOT=${1:-"~/workspace"}

function editor-window {
   tmux rename-window editor 

   tmux select-pane -t 0 
   tmux send-keys "cd ${ROOT} && clear" C-m
   tmux split-window -v   

   tmux select-pane -t 1 
   tmux send-keys 'export JAVA_CMD="${JAVA_HOME}/bin/java.exe"' C-m 
   tmux send-keys "cd ${ROOT} && clear" C-m
   tmux split-window -h

   tmux select-pane -t 2 
   tmux send-keys 'export JAVA_CMD="${JAVA_HOME}/bin/java.exe"' C-m 
   tmux send-keys "cd ${ROOT} && clear" C-m

   tmux select-pane -t 1
   tmux split-window -v

   tmux select-pane -t 3 
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT} && clear" C-m
   tmux split-window -v

   tmux select-pane -t 4 
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT} && clear" C-m
}

{
   tmux -vvv start-server 
   tmux new-session -d -s clojure

   # tmux source-file ~/.tmux/clojure.env
   editor-window

   select-pane -t 0 
   attach-session -t clojure

   tmux attach-session -t clojure
}
