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

def bCsr : Nat := cb csr_cache_1

theorem bCsr_eq : cb csr_cache_1 = bCsr := rfl

/-- **`compute_state_root`'s conditional cost, literal bound** (about `2^328`), at `CsrPre` (`ArgsOK` only). -/
theorem hypCsrCost_lit :
    Eb.HypCsrCost σ 1336804980668391546591356208775245928998772810390345323280965897215751421514440737659283539 :=
  Inv.CalleeCostP.mono csr_condCost8 (by rw [bCsr_eq]; all_goals decide +kernel)

end InitECandidate.Solver.Band7

#print axioms InitECandidate.Solver.Band7.hypCsrCost_lit
