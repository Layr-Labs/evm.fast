import InitECandidate.Solver.Band.Disp
import InitECandidate.Solver.Wit.WsTrie

/-!
# `opCost` at the record family: what is left (witg, task (5))

`WitG` holds only for the record family `guestHooksR` (the `wsD` row), so the storage chain and
`op_dispatch` are instantiated there. **`op_dispatch_condCost_R`** is `Band.op_dispatch_condCost`
at `H := guestHooksR` (`guestHooksR_lawful`); its two inputs are unchanged in shape:

* `hsl : CondCost … guestHooksR "op_sload" (sg0 []) (PreOpX … M) Bsl`,
* `hss : CondCost … guestHooksR "op_sstore" (sg0 []) (PreOpX … M) Bss`.

What is now available for them: `wst_condCost hGT sg` (band item #6, `ws_storage_trie` from `G`
alone), `witG_of_gt hGT`, `dwPre_of_G hGT` (`Wit/WitG.lean`, `Wit/WsTrie.lean`). What is still
missing is listed in `research/notes/witg-status.md` (§ "Still missing for opCost").
-/

namespace InitECandidate.Solver.Wit
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames (PreOpX GP GR sg0 sg1)

variable {σ : Type}

/-- **`opCost` at the record family**, from the two storage handlers' conditional costs. -/
theorem op_dispatch_condCost_R {M Bsl Bss : Nat}
    (hsl : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sload") (sg0 [])
      (PreOpX guestC tEV tCK GP GR M) Bsl)
    (hss : CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_sstore") (sg0 [])
      (PreOpX guestC tEV tCK GP GR M) Bss) :
    CondCost σ guestCtx guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch") (sg1 [])
      (PreOpX guestC tEV tCK GP GR M) (Band.odCostFactor * (1 + max InitECandidate.Solver.Band.odTabBound (max Bsl Bss))) :=
  Band.op_dispatch_condCost Hooks.guestHooksR_lawful hsl hss

end InitECandidate.Solver.Wit

#print axioms InitECandidate.Solver.Wit.op_dispatch_condCost_R
