# Target encoding certificates

Native generation proposes literals; Lean kernel equations certify them. Allowed axioms are propext, Classical.choice, and Quot.sound.

Canonical endpoints are Initial.program, Phase0.program, Phase1.program, Phase0.encode_eq (false stability), Phase1.encode_eq (true stability), Labels0.labels_eq, Labels1.labels_eq, and Initial.origin_eq under InitECandidate.Proofs.BackendStages.TargetChecks. These depend on sibling backend pipeline modules supplied by the full challenge branch.

Label positions and encoding positions differ during phase0. Sections595,597,692,862 change encoding lengths. Original leaf equations through595 are reused; corrected encoding leaves596..889 live under Correct. Use corrected phase1 outputs directly. Old aliases648,671,683,684 retained stale bytes; they were repaired to checked Correct outputs and all eight legacy Encode/Phase endpoints passed. Agreement594..598 passed, but the attempted whole output bridge was rejected and removed.

Resume the affected checked-leaf queue with `python3 tools/prepare-backend-target-correct.py --affected-only --workers 4 --seconds 180`. It uses CPUs4–7. Original full proposal checks use `prepare-backend-target-all.py` on CPUs0–3.

Aggregate chunks use `python3 tools/prepare-backend-target-aggregate-queue.py --cpus 12-15 --seconds 180`. Origin chunks use the same command with `--origin-only`. New instances share aggregate-admission.lock, admitting one compiler total. They wait for upstream oleans and checkpoint successes. Persistent service setup is external to these tools.

Generation drivers GenerateAll/GenerateCorrect write proposal sources. Never regenerate leaf or chunk sources while a checker is reading them. `prepare-backend-target-aggregate.py --correct --mixed` and `prepare-backend-target-labels.py --phase 0` / `--phase 1` generate composition sources.

Measured samples: corrected594–598 both phases passed; both five-section encoding compositions passed;32-section phase1 composition1.60s wall1.64s CPU1.77GiB RSS;32-section origin equality2.21s wall2.19s CPU2.59GiB RSS. All used standard axioms. Full aggregate certification and fresh Lake/verifier integration remain pending; direct oleans are not Lake traces.
