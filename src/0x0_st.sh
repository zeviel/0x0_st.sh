#!/bin/bash

api="https://0x0.st"

function upload_file() {
    # 1 - file_path: (string): <file_path>
    curl -F "file=@${1}" "${api}/upload.php"
}

function upload_text() {
    # 1 - text: (string): <text>
    echo "${1}" | curl -F 'file=@-' "${api}/upload.php"
}
