#!/bin/bash

COMMAND=$1
MOVE_SEQUENCE=$2
DEPTH=$3

if [[ "$COMMAND" == "bfs" ]]; then
    python rubickscube.py bfs "$MOVE_SEQUENCE"
elif [[ "$COMMAND" == "dls" ]]; then
    python rubickscube.py dls "$MOVE_SEQUENCE" "$DEPTH"
elif [[ "$COMMAND" == "ids" ]]; then
    python rubickscube.py ids "$MOVE_SEQUENCE" "$DEPTH"
elif [[ "$COMMAND" == "astar" ]]; then
    python rubickscube.py astar "$MOVE_SEQUENCE"
elif [[ "$COMMAND" == "norm" ]]; then
    python rubickscube.py norm "$MOVE_SEQUENCE"
else
    echo "Error: Unknown command '$COMMAND'"
    exit 1
fi
