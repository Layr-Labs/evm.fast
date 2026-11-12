import InitECandidate.Solver.Band7.CsrFin

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

/-!
# `compute_state_root`: the literal bound (Band7)
-/

namespace InitECandidate.Solver.Band7
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Trie InitECandidate.Solver.Spec

variable {σ : Type}

def bCsr : Nat :=
  717691644069425908740956491496255224662883633612362210178552783119512950620233820187476079056773459

theorem bCsr_eq : cb csr_cache_1 = bCsr := by decide +kernel

/-- **`compute_state_root`'s conditional cost, literal bound** (about `2^328`), at `CsrPre` (`ArgsOK` only). -/
theorem hypCsrCost_lit :
    Eb.HypCsrCost σ 717691644069425908740956491496255224662883633612362210178552783119512950620233820187476079056773459 :=
  Inv.CalleeCostP.mono csr_condCost8 (by rw [bCsr_eq]; exact le_refl _)

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.hypCsrCost_lit
