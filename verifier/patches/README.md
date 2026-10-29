# Comparator export transport

`comparator-file-spool.patch` applies to `leanprover/comparator` commit
`c0c5a52d2aff92b457c3e5ed4a68c1ebc5795809`. `setup_tools.sh` checks its SHA-256
before applying it and builds with this project's exact Lean patch release.

For `enable_nanoda=false`, the parent comparator copies exporter stdout in
64 KiB chunks into secure temporary files, then uses the existing stream
parser. It exports both environments before parsing either. This avoids
retaining the entire text alongside the exporter and parsed environments.
The verifier supplies a private disk-backed `TMPDIR` outside the candidate's
writable Lake cache; tmpfs and ramfs are rejected. Landrun gives candidates
write access only to the Lake cache. Temporary files are held by their open
handles, rewound after successful exporter exit, and removed on normal or
exceptional completion. Failed exporters and failed writes reject the run.

The verifier disables nanoda, so its runs use this disk-backed export path.
The existing declaration comparison, definition-hole handling, both theorem
and definition axiom closures, primitive checks, and full Lean kernel replay
are retained.

The installed native comparator passes all 14 upstream fixtures. The small
transport and error-handling measurements are recorded in
`docs/PROOF-PERFORMANCE.md`. These fixtures do not substitute for the full
isolated init-e certificate verification.
