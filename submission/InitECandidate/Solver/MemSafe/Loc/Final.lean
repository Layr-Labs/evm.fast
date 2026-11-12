import InitECandidate.Solver.MemSafe.Loc.Wgs

set_option autoImplicit false

/-!
# The dispatcher with the two located facts discharged (sonnet-loc)

* `rootLoc'_of_leaf_dec`: `RootLoc'` outright (`leafLoc'`, `decLoc'`).
* `op_dispatch_condCost_Loc`: `St2.op_dispatch_condCost_St2'` with `hLeaf` and `hDec` discharged; open only in
  `Staged`, `hWB` and the staged size fact `hWSz` (the `ws` record has at least 32 bytes: slot 24 is read).
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Loc
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
  InitECandidate.Solver.MemSafe.Stor InitECandidate.Solver.MemSafe.St2
open InitECandidate.Solver.MemSafe.Types (guestC tWSR)

variable {σ : Type}

theorem rootLoc'_of_leaf_dec : RootLoc' σ := rootLoc_of_gao' (gaoLoc_of' leafLoc' decLoc')

/-- **`ws_get_storage`'s memory-safety summary** at `guestHooksR`. -/
theorem csumm_wgs_Loc {tV : Nat} (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hWSz : 32 ≤ (guestC.ty tWSR).minSz) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig
      storWstCaps :=
  csumm_wgs_of_loc' hS hWB hWSz rootLoc'_of_leaf_dec

set_option exponentiation.threshold 1000 in
/-- **The dispatcher's full cost**, open only in the staged hypotheses `hS`, `hWB`, `hWSz`. -/
theorem op_dispatch_condCost_Loc {M : Nat} {tV : Nat}
    (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hWSz : 32 ≤ (guestC.ty tWSR).minSz) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odN * (1 + max (2 ^ 269) (max Band3.oslB Band3.ossB))) :=
  Band3.op_dispatch_condCost_full hS.hGT (gsoSumm_of_wgs (csumm_wgs_Loc hS hWB hWSz))

end InitECandidate.Solver.MemSafe.Loc

#print axioms InitECandidate.Solver.MemSafe.Loc.decLoc'
#print axioms InitECandidate.Solver.MemSafe.Loc.leafLoc'
#print axioms InitECandidate.Solver.MemSafe.Loc.rootLoc'_of_leaf_dec
#print axioms InitECandidate.Solver.MemSafe.Loc.csumm_wgs_Loc
#print axioms InitECandidate.Solver.MemSafe.Loc.op_dispatch_condCost_Loc
