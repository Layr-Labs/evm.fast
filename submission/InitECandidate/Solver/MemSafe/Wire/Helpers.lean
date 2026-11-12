import InitECandidate.Solver.MemSafe.Wire.Fold
import InitECandidate.Solver.MemSafe.Bn2.Submul
import InitECandidate.Solver.MemSafe.MptH.Compact
import InitECandidate.Solver.MemSafe.MptH.Key
import InitECandidate.Solver.MemSafe.Shards.CtabFind

/-!
# Wiring: helper summaries that take fold entries as hypotheses

* `fq_poly_submul_guestJL`: sonnet-bn2's `Bn2.sumSpec_fq_poly_submul_guestJL`, with its
  `fq_mul` / `fq_sub` callee summaries read off the merged fold (`ShardsJL.tab26` entries 347
  and 336).
* `mptFail_guestJL` (tab26[497]), `keccak256_guestJL` (tab26[525]): fold entries that the MptH
  helpers take as hypotheses; `compact_to_nibbles_guestJL`, `mpt_nibble_key_guestJL`: sonnet-mpt's
  summaries with them discharged.
-/

set_option maxRecDepth 1000000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Wire
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec

/-- **`fq_poly_submul`'s summary for `guestHooksJL`**, every hypothesis discharged. -/
theorem fq_poly_submul_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "fq_poly_submul")
      Bn2.bnSubSig Bn2.SubPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  Bn2.sumSpec_fq_poly_submul_guestJL (ctab% tab_guestJL)
    (ctab% tab_guestJL)

/-- **`compact_to_nibbles`'s summary for `guestHooksJL`**, every hypothesis discharged. -/
theorem compact_to_nibbles_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "compact_to_nibbles")
      MptH.ctnSig MptH.CtnPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  MptH.sumSpec_compact_to_nibbles_guestJL mptFail_guestJL

/-- **`mpt_nibble_key`'s summary for `guestHooksJL`**, every hypothesis discharged. -/
theorem mpt_nibble_key_guestJL {σ : Type} :
    SumSpecA σ guestCtx Types.guestC (Hooks.guestHooksJL (σ := σ)) (nm "mpt_nibble_key")
      MptH.mnkSig MptH.MnkPre (fun _ _ _ _ => False) (fun _ _ _ _ _ _ => True) :=
  MptH.sumSpec_mpt_nibble_key_guestJL keccak256_guestJL

end InitECandidate.Solver.MemSafe.Wire

#print axioms InitECandidate.Solver.MemSafe.Wire.fq_poly_submul_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.compact_to_nibbles_guestJL
#print axioms InitECandidate.Solver.MemSafe.Wire.mpt_nibble_key_guestJL
