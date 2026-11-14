import InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.Main
import InitECandidate.Solver.MemSafe.St2.Wgs2
import InitECandidate.Solver.MemSafe.Dn.Gso2

set_option autoImplicit false

/-!
# `get_storage_original` and the dispatcher from `ws_get_storage`'s hand summary (sonnet-st2)

`get_storage_original` calls `ws_get_storage` (and tab26 functions only), so the checker accepts it
against `tab26` plus the one entry `ws_get_storage` at `⟨[any, any], [], [], true⟩` / `storWstCaps`,
which `csumm_wgs_of_loc` proves.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.St2
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

/-- `tab26` plus `ws_get_storage`. -/
def gsoTab : CTab := (nm "ws_get_storage", storWgsSig, storWstCaps) :: ShardsJL.tab26

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem gso_chunk_ok : chkChunk Types.guestC gsoTab [gsoCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem gso_chunk_valid : ∀ e ∈ [gsoCand], e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 379) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

/-- **`get_storage_original`'s summary** (`Band3.GsoSumm σ`) from `ws_get_storage`'s. -/
theorem gsoSumm_of_wgs
    (hWGS : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage")
      storWgsSig storWstCaps) : Band3.GsoSumm σ :=
  chkChunk_sound Rec.foldOK_guestR [gsoCand] gsoTab gso_chunk_ok gso_chunk_valid
    (ctabSound_cons Rec.tab26_guestR hWGS) _ _ _
    (by simp [chunkTab, gsoCand, MCand.ofPair])

set_option exponentiation.threshold 1000 in
/-- **The dispatcher's full cost**, open only in `hGT` (staged) and the hypotheses of
`ws_get_storage`'s summary (`ws_storage_trie` at `[buf 32]`, the located root post, the staged
typing facts). -/
theorem op_dispatch_condCost_St2 {M : Nat} {tV : Nat}
    (hS : Staged σ (Hooks.guestHooksR (σ := σ)) tV)
    (hWB : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie")
      storWstBufSig storWstCaps)
    (hLoc : RootLoc σ) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odCostFactor * (1 + max InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.handlerBound (max Band3.oslB Band3.ossB))) :=
  Band3.op_dispatch_condCost_full hS.hGT (gsoSumm_of_wgs (csumm_wgs_of_loc hS hWB hLoc))

end InitECandidate.Solver.MemSafe.St2

#print axioms InitECandidate.Solver.MemSafe.St2.gsoSumm_of_wgs
#print axioms InitECandidate.Solver.MemSafe.St2.op_dispatch_condCost_St2
