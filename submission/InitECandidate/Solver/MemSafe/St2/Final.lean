import InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.Main
import InitECandidate.Solver.MemSafe.St2.Gao

set_option autoImplicit false

/-!
# The assembled statements (sonnet-st2)

* `rootLoc_of_leaf_dec`: `RootLoc σ` from `LeafLoc σ` (`ws_account_leaf`) and `DecLoc σ`
  (`decode_account_from_leaf`).
* `csumm_wgs_St2`: `ws_get_storage`'s summary `CSumm … storWgsSig storWstCaps`.
* `gsoSumm_St2`: `Band3.GsoSumm σ`.
* `op_dispatch_condCost_St2'`: the dispatcher's full cost.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.St2
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

theorem rootLoc_of_leaf_dec (hLeaf : LeafLoc σ) (hDec : DecLoc σ) : RootLoc σ :=
  rootLoc_of_gao (gaoLoc_of hLeaf hDec)

/-- **`ws_get_storage`'s memory-safety summary** at `guestHooksR`. -/
theorem csumm_wgs_St2 {tV : Nat} (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hLeaf : LeafLoc σ) (hDec : DecLoc σ) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig
      storWstCaps :=
  csumm_wgs_of_loc hS hWB (rootLoc_of_leaf_dec hLeaf hDec)

/-- **`get_storage_original`'s summary** (`Band3.GsoSumm σ`). -/
theorem gsoSumm_St2 {tV : Nat} (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hLeaf : LeafLoc σ) (hDec : DecLoc σ) : Band3.GsoSumm σ :=
  gsoSumm_of_wgs (csumm_wgs_St2 hS hWB hLeaf hDec)

set_option exponentiation.threshold 1000 in
/-- **The dispatcher's full cost**, open only in the staged hypotheses `hS`, `hWB` and the two
located facts `hLeaf`, `hDec`. -/
theorem op_dispatch_condCost_St2' {M : Nat} {tV : Nat}
    (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hLeaf : LeafLoc σ) (hDec : DecLoc σ) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odCostFactor * (1 + max InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.handlerBound (max Band3.oslB Band3.ossB))) :=
  op_dispatch_condCost_St2 hS hWB (rootLoc_of_leaf_dec hLeaf hDec)

end InitECandidate.Solver.MemSafe.St2

#print axioms InitECandidate.Solver.MemSafe.St2.rootLoc_of_leaf_dec
#print axioms InitECandidate.Solver.MemSafe.St2.csumm_wgs_St2
#print axioms InitECandidate.Solver.MemSafe.St2.gsoSumm_St2
#print axioms InitECandidate.Solver.MemSafe.St2.op_dispatch_condCost_St2'
