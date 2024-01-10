#!/bin/bash

# Function to display CPU information
get_cpu_info() {
  lscpu
}

# Function to display memory information
get_memory_info() {
  free
}

# Main logic
case "$1" in
  --help)
    display_help
    exit 0
    ;;
  --version)
    display_version
    exit 0
    ;;
  cpu)
    shift
    get_cpu_info
    ;;
  memory)
    shift
    get_memory_info
    ;;
  *)
    echo "Error: Unrecognized option $1"
    echo "Try 'internsctl --help' for more information."
    exit 1
    ;;
esac
