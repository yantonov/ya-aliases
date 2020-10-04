#!/bin/sh

PROJECT_NAME="$(basename $(pwd))"

PROJECT_DIR="${HOME}/projects/${PROJECT_NAME}"

start_time="$(date +%s)"

ya ide idea --group-modules=tree -r="${PROJECT_DIR}" --directory-based --keep-going -DUSE_PREBUILT_TOOLS --host-platform-flag=USE_PREBUILT_TOOLS --yt-store --omit-test-data --stat .

end_time="$(date +%s)"

elapsed="$(($end_time-$start_time))"
echo "Total of $elapsed seconds elapsed for process"
