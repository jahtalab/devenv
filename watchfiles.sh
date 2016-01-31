function watch {
  # log_info "Watching: $PATHS_TO_SYNC"
  
  local PATHS_TO_SYNC=$1
  local readonly fswatch_cmd="fswatch -0 $PATHS_TO_SYNC"
  # log_debug "$fswatch_cmd"

  local file=""
  eval "$fswatch_cmd" | while read -d "" file
  do
    echo "$file"
  done
}


watch "$@"
