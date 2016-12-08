#!/bin/bash

if [[ $# != 1 ]]; then
   echo "Usage: $0 YOUR_BIN_DIR"
   exit 1
fi

bin="$(realpath $1)"
here="$(dirname $(realpath $0))"

if [[ ! -d "$bin" ]]; then
    echo "Error: ${bin} does not exist."
fi

if [[ ! -w "$bin" ]]; then
    echo "Error: ${bin} is not writable."
fi

script_list=(
ankicount
ankidoublecolon    
)

for s in "${script_list[@]}"; do
    ln -sf "${here}/${s}.sh" "${bin}/${s}"
done
