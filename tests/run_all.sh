#!/bin/bash
set -euo pipefail
IFS=$'\n\t'

export DIR="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

"${DIR}/unit_backup_dump_flags.sh"
"${DIR}/unit_backup_parse_args.sh"
"${DIR}/unit_backup_perform.sh"
"${DIR}/unit_mysql_credentials.sh"
"${DIR}/unit_backup_mysqldump_defaults.sh"
"${DIR}/unit_backup_s3_uri.sh"
"${DIR}/unit_github_release.sh"
