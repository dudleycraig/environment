#!/usr/bin/bash
{
   ROOT=${1:-"~/workspace"}

   tmux start-server 
   tmux new-session -d -s clojure

   tmux rename-window editor 

   tmux select-pane -t 0 
   tmux split-window -v   
   tmux select-pane -t 1 
   tmux split-window -h
   tmux select-pane -t 1 
   tmux split-window -v
   tmux select-pane -t 3 
   tmux split-window -v

# editor
#-----------------------------------------------------------------------------#
#                                                                             #
#                                                                             #
#                                  VIM (0)                                    #
#                                                                             #
#                                                                             #
#-----------------------------------------------------------------------------#
#                                     #                                       #
#              FIGWHEEL (1)           #                 REPL (3)              #
#                                     #                                       #
#-----------------------------------------------------------------------------#
#               LESS (2)              #                SERVER (4)             #
#-----------------------------------------------------------------------------#

   # VIM
   tmux select-pane -t 0 
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT}" C-m
   tmux send-keys "clear" C-m

   # FIGWHEEL
   tmux select-pane -t 1 
   # tmux send-keys 'export JAVA_CMD="${JAVA_HOME}/bin/java.exe"' C-m # fix for when figwheel can't find java within windows path
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT}" C-m
   tmux send-keys "clear" C-m

   # LESS
   tmux select-pane -t 2 
   # tmux send-keys 'export JAVA_CMD="${JAVA_HOME}/bin/java.exe"' C-m # fix for when figwheel can't find java within windows path
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT}" C-m
   tmux send-keys "clear" C-m

   # REPL
   tmux select-pane -t 3 
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT}" C-m
   tmux send-keys "clear" C-m

   # SERVER
   tmux select-pane -t 4 
   tmux send-keys 'export JAVA_CMD="$(cygpath -w ${LEIN_JAVA_CMD})"' C-m 
   tmux send-keys "cd ${ROOT}" C-m
   tmux send-keys "clear" C-m

   tmux attach-session -t clojure
}

