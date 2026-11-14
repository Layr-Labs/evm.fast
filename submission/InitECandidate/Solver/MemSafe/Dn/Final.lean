import InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.Main
import InitECandidate.Solver.MemSafe.Dn.Wst
import InitECandidate.Solver.MemSafe.Loc.Final

set_option autoImplicit false

/-!
# The two storage facts, discharged

* Fact 1 (main, `Dn/`): `csumm_wst_buf_G`, `ws_storage_trie`'s capability summary on 32-byte keys
  (the witness-node decoder proved memory-safe by hand: `_resolve_step`, `_decode_step`, the
  decoder loop, the body, the two scratch-window wrappers, `decode_witness_to_mpt`).
* Fact 2 (sonnet-loc, `Loc/`): the located leaf / decoder facts.

**`op_dispatch_condCost_Fin`**: the dispatcher's conditional cost, open only in staged
configuration facts: `Staged` (the record typing, incl. `ws : nptr tWSR`), the `ws` record's size
(`hWSz`) and its slot 4 typing (`hWS4`, `WS_STORAGE_TRIES : ptr tHTh32`, as in the staged
descriptor `⟨heap, [prot, scalar, prot, scalar, ptr tHTh32], prot, 40⟩`).
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Dn
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor InitECandidate.Solver.MemSafe.St2
open InitECandidate.Solver.MemSafe.Types (guestC tWSR)

variable {σ : Type}

set_option exponentiation.threshold 1000 in
/-- **The dispatcher's full cost, both storage facts discharged.** -/
theorem op_dispatch_condCost_Fin {M : Nat} {tV : Nat}
    (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWSz : 32 ≤ (guestC.ty tWSR).minSz)
    (hWS4 : (guestC.ty tWSR).slot 4 = .ptr Types.tHTh32) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odCostFactor * (1 + max InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.handlerBound (max Band3.oslB Band3.ossB))) :=
  Loc.op_dispatch_condCost_Loc hS (csumm_wst_buf_G hS.hGT hWS4) hWSz

/-- `ws_get_storage`'s memory-safety summary, both storage facts discharged. -/
theorem csumm_wgs_Fin {tV : Nat} (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWSz : 32 ≤ (guestC.ty tWSR).minSz)
    (hWS4 : (guestC.ty tWSR).slot 4 = .ptr Types.tHTh32) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig
      storWstCaps :=
  Loc.csumm_wgs_Loc hS (csumm_wst_buf_G hS.hGT hWS4) hWSz

end InitECandidate.Solver.MemSafe.Dn

#print axioms InitECandidate.Solver.MemSafe.Dn.csumm_wst_buf_G
#print axioms InitECandidate.Solver.MemSafe.Dn.csumm_wgs_Fin
#print axioms InitECandidate.Solver.MemSafe.Dn.op_dispatch_condCost_Fin
