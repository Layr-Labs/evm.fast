#!/usr/bin/env bash
# Bound outside proof builds; --constrained mirrors verifier resource caps.
set -euo pipefail
cd "$(dirname "$0")/.."
export LAKE_ARTIFACT_CACHE=false
seconds=28800
constrained=false
slots=30
slots_override=false
while [[ $# -gt 0 ]]; do
  case "$1" in
    --quick) seconds=600; shift ;;
    --constrained) constrained=true; shift ;;
    --slots) slots="$2"; slots_override=true; shift 2 ;;
    *) break ;;
  esac
done
if $constrained && ! $slots_override; then slots=30; fi
if [[ ! "$slots" =~ ^[1-9][0-9]*$ ]]; then
  echo "slots must be a positive integer" >&2
  exit 2
fi
build_cpus=$(python3 -c 'import os, sys; print(",".join(map(str, sorted(os.sched_getaffinity(0))[:int(sys.argv[1])])))' "$slots")
build_command=(python3 "$PWD/tools/limited-lake.py" --work-dir "$PWD/.lake/lean-limit" --slots "$slots" -- lake build "$@")
if $constrained; then
  # An outside build with the verifier's resource caps, without private namespaces.
  export XDG_RUNTIME_DIR="${XDG_RUNTIME_DIR:-/run/user/$(id -u)}"
  export DBUS_SESSION_BUS_ADDRESS="${DBUS_SESSION_BUS_ADDRESS:-unix:path=$XDG_RUNTIME_DIR/bus}"
  build_unit="init-e-build-$(python3 -c 'import uuid; print(uuid.uuid4().hex[:12])')"
  exec systemd-run --user --wait --pipe --collect --unit="$build_unit" \
    --working-directory="$PWD" --setenv="PATH=$PATH" --setenv="HOME=$HOME" \
    --setenv=LAKE_ARTIFACT_CACHE=false \
    -p Nice=10 -p MemoryAccounting=yes \
    -p MemoryMax=120259084288 -p MemorySwapMax=0 -p TasksMax=16384 \
    -p "CPUAffinity=${build_cpus//,/ }" -p "RuntimeMaxSec=$seconds" \
    -p KillMode=control-group -p TimeoutStopSec=10 \
    -- "${build_command[@]}"
fi
if command -v taskset >/dev/null 2>&1; then
  exec timeout --kill-after=10s "${seconds}s" nice -n 10 taskset --cpu-list "$build_cpus" "${build_command[@]}"
fi
exec timeout --kill-after=10s "${seconds}s" nice -n 10 "${build_command[@]}"
