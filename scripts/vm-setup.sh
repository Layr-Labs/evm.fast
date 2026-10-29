#!/usr/bin/env bash
# Trusted bootstrap in the fresh Ubuntu 26.04 guest, before any proof is compiled.
set -euo pipefail
cd /srv/evm-benchmark
systemctl --version
cat /sys/kernel/security/lsm
# PrivatePIDs, required by the verifier units, needs systemd 257 or newer.
test "$(systemctl --version | head -1 | awk '{print $2}')" -ge 257
grep -qw landlock /sys/kernel/security/lsm
# ProtectSystem=strict excludes /home; keep the judge home under /srv.
useradd --create-home --home-dir /srv/evm --shell /bin/bash evm
chown -R evm:evm /srv/evm-benchmark
loginctl enable-linger evm
systemctl start "user@$(id -u evm).service"
cat > /etc/apparmor.d/evm-systemd-executor <<'APPARMOR'
abi <abi/4.0>,
include <tunables/global>
profile evm-systemd-executor /usr/lib/systemd/systemd-executor flags=(unconfined) {
  userns,
  include if exists <local/evm-systemd-executor>
}
APPARMOR
apparmor_parser -r /etc/apparmor.d/evm-systemd-executor
