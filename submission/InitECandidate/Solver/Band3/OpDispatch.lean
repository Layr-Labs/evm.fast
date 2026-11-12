import InitECandidate.Solver.Band3.OpSstore

/-!
# `op_dispatch_condCost_full` (sonnet-store)

`Wit.op_dispatch_condCost_R` applied to `osl_condCost` and `oss_condCost`. Open hypotheses:
* `hGT`: the staged GT entry `ws : nptr tWSR` (becomes `by decide` once the stage is applied);
* `hGSO : GsoSumm σ`: the memory-safety summary of `get_storage_original` at `guestHooksR`
  (memory-safety lane; needs `ws_get_storage`, `ws_storage_trie`, `decode_witness_to_mpt`).
-/

namespace InitECandidate.Solver.Band3
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types

variable {σ : Type}

theorem op_dispatch_condCost_full {M : Nat}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR)) (hGSO : GsoSumm σ) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (Frames.sg1 [])
      (Frames.PreOpX guestC tEV tCK Frames.GP Frames.GR M)
      (Band.odN * (1 + max (2 ^ 269) (max oslB ossB))) :=
  Wit.op_dispatch_condCost_R (osl_condCost hGT) (oss_condCost hGT hGSO)

end InitECandidate.Solver.Band3

#print axioms InitECandidate.Solver.Band3.op_dispatch_condCost_full
