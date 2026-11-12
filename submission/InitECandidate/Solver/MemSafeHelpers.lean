import InitECandidate.Solver.MemSafe.Helpers.Basic
import InitECandidate.Solver.MemSafe.Helpers.GuestCtx
import InitECandidate.Solver.MemSafe.Helpers.Mem
import InitECandidate.Solver.MemSafe.Helpers.BufRead
import InitECandidate.Solver.MemSafe.Helpers.Bytes
import InitECandidate.Solver.MemSafe.Helpers.Rlp
import InitECandidate.Solver.MemSafe.Helpers.Nibbles
import InitECandidate.Solver.MemSafe.Helpers.Jumpdests
import InitECandidate.Solver.MemSafe.Helpers.PureF
import InitECandidate.Solver.MemSafe.Helpers.GlobBuf
import InitECandidate.Solver.MemSafe.Helpers.Divmnu
import InitECandidate.Solver.MemSafe.Helpers.BnDiv
import InitECandidate.Solver.MemSafe.Helpers.Digits
import InitECandidate.Solver.MemSafe.Helpers.DigitsDiv
import InitECandidate.Solver.MemSafe.Helpers.PureR
import InitECandidate.Solver.MemSafe.Helpers.U256Mod
import InitECandidate.Solver.MemSafe.Helpers.GuestTypes

/-!
# Memory-safety summaries of the guest helpers (M3)

* `MemSafe/Helpers/Basic.lean`: the generic adapters (`FootSpec`, `summ_of_foot`, `G_buf`,
  `bufOK_bound`, store footprints).
* `MemSafe/Helpers/GuestCtx.lean`: the side conditions for `guestCtx` (`alignedDom_guestCtx`).
-/
