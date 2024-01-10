#!/bin/bash

# Function to get file information
get_file_info() {
  file=$2
  if [ -f "$file" ]; then
    case "$1" in
      --size | -s)
        stat -c %s "$file"
        ;;
      --permissions | -p)
        stat -c %A "$file"
        ;;
      --owner | -o)
        stat -c %U "$file"
        ;;
      --last-modified | -m)
        stat -c %y "$file"
        ;;
      *)
        echo "Error: Invalid option for file information"
        echo "Usage: internsctl file getinfo [options] <file-name>"
        echo "Options:"
        echo "  --size, -s             Print file size"
        echo "  --permissions, -p      Print file permissions"
        echo "  --owner, -o            Print file owner"
        echo "  --last-modified, -m    Print last modified time"
        exit 1
        ;;
    esac
  else
    echo "Error: File does not exist"
    exit 1
  fi
}

# Main logic
case "$1" in
  file)
    case "$2" in
      getinfo)
        shift 2
        get_file_info "$@"
        ;;
      *)
        echo "Error: Unrecognized subcommand for file"
        echo "Try 'internsctl --help' for more information."
        exit 1
        ;;
    esac
    ;;
  *)
    echo "Error: Unrecognized option $1"
    echo "Try 'internsctl --help' for more information."
    exit 1
    ;;
esac
