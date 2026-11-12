import InitECandidate.Solver.MemSafe.St2.Gso3
import InitECandidate.Solver.Band5.GetPreTxStorage

set_option autoImplicit false

/-!
# The memory-safety summary of `get_pre_tx_storage` (band5)

`get_pre_tx_storage` calls `stor_lookup`, `record_pre_state_read` (both `tab26`) and
`ws_get_storage`, so the checker accepts it against `tab26` plus the `ws_get_storage` hand summary
(same shape as `St2.gsoSumm_of_wgs`), at `gsoSig` / `rpsrCaps`.
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.Band5
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Stor
open InitECandidate.Solver.Band3 (gsoSig rpsrCaps)

variable {σ : Type}

def gptsCand : MCand :=
  MCand.ofPair (nm "get_pre_tx_storage") (declPair Guest.Software.guestFn_get_pre_tx_storage)
    gsoSig rpsrCaps

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem gpts_chunk_ok : chkChunk Types.guestC St2.gsoTab [gptsCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem gpts_chunk_valid : ∀ e ∈ [gptsCand], e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 421) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

/-- The summary `Band5.idx_start_storage` threads: `get_pre_tx_storage` at `gsoSig` / `rpsrCaps`. -/
def GptsSumm (σ : Type) : Prop :=
  CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_pre_tx_storage") gsoSig
    rpsrCaps

/-- **`get_pre_tx_storage`'s summary** from `ws_get_storage`'s. -/
theorem gptsSumm_of_wgs
    (hWGS : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage")
      storWgsSig storWstCaps) : GptsSumm σ :=
  chkChunk_sound Rec.foldOK_guestR [gptsCand] St2.gsoTab gpts_chunk_ok gpts_chunk_valid
    (ctabSound_cons Rec.tab26_guestR hWGS) _ _ _
    (by simp [chunkTab, gptsCand, MCand.ofPair])

end InitECandidate.Solver.Band5

#print axioms InitECandidate.Solver.Band5.gptsSumm_of_wgs
