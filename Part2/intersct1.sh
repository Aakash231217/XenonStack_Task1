#!/bin/bash

# Function to create a new user
create_user() {
  username=$1 
  sudo adduser $username
}

# Function to list all regular users
list_users() {
  cut -d: -f1 /etc/passwd
}

# Function to list users with sudo permissions
list_sudo_users() {
  grep -Po '^sudo.+:\K.*$' /etc/group | tr ',' '\n'
}    

# Main logic
case "$1" in
  user)
    case "$2" in
      create)
        shift 2
        create_user "$@"
        ;;
      list)
        if [ "$3" = "--sudo-only" ]; then
          list_sudo_users
        else
          list_users
        fi
        ;;
      *)
        echo "Error: Invalid subcommand for user"
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
