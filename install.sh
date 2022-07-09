#!/usr/bin/env bash

set -o nounset
set -o errexit
set -o pipefail

debug_log_path="/tmp/download-yandex-zen-debug.log"
clone_dir="/tmp/download-yandex-zen"


function now() {
    date '+%Y-%m-%d %H:%M:%S'
}

function log() {
    local _msg="${1}"

    printf "[%s] %s\n" "$(now)" "${1}"
}

function debug_log() {
    cat >>"${debug_log_path}"
}

log "Installing 'git' and 'make' with homebrew..."
brew install git make 2>&1 | debug_log

log "Cloning repository with downloader script to '${clone_dir}'..."

if [ -n "${clone_dir}" -a -d "${clone_dir}" ]; then
    rm -rf "${clone_dir}"
fi
git clone 'https://github.com/DenKoren/download-yandex-zen.git' "${clone_dir}" 2>&1 | debug_log

cd "${clone_dir}"

log "Installing downloader..."
make install-osx

log "Removing '${clone_dir}' and debug logs..."
rm -rf "${clone_dir}" "${debug_log_path}"
