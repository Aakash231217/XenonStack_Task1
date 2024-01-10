#!/bin/bash

# Function to display help
display_help() {
  echo "Usage: internsctl [options]"
  echo "Options:"
  echo "  --help     Display this help message"
  echo "  --version  Display version information"
  echo ""
  echo "Examples:"
  echo "  internsctl --help     # Display help"
  echo "  internsctl --version  # Display version info"
}

# Function to display version
display_version() {
  echo "internsctl version 0.1.0"
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
  *)
    echo "Error: Unrecognized option $1"
    echo "Try 'internsctl --help' for more information."
    exit 1
    ;;
esac
