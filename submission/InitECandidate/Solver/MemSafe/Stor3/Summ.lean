import InitECandidate.Solver.MemSafe.Dn.Cfg
import InitECandidate.Solver.Band3.All

set_option autoImplicit false

/-!
# Storage summaries for the frame loop (sonnet-store3)

`get_storage`'s `CSumm` from `ws_get_storage`'s, through the checker (the `gsoSumm_of_wgs`
pattern).
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Stor3
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Stor

variable {σ : Type}

def gsCaps : List Cap := ⟨nm "sk_buf", 24, [], false⟩ :: Band3.rpsrCaps

def gsCand : MCand :=
  MCand.ofPair (nm "get_storage") (declPair Guest.Software.guestFn_get_storage) Band3.gsSig gsCaps

/-- `tab26` plus `ws_get_storage`. -/
def gsTab : CTab := (nm "ws_get_storage", storWgsSig, storWstCaps) :: ShardsJL.tab26

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem gs_chunk_ok : chkChunk Types.guestC gsTab [gsCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem gs_chunk_valid : ∀ e ∈ [gsCand], e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 378) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

/-- **`get_storage`'s summary** from `ws_get_storage`'s. -/
theorem csumm_gs_of_wgs
    (hWGS : CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage")
      storWgsSig storWstCaps) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "get_storage")
      Band3.gsSig gsCaps :=
  chkChunk_sound Rec.foldOK_guestR [gsCand] gsTab gs_chunk_ok gs_chunk_valid
    (ctabSound_cons Rec.tab26_guestR hWGS) _ _ _
    (by simp [chunkTab, gsCand, MCand.ofPair])

end InitECandidate.Solver.MemSafe.Stor3

#print axioms InitECandidate.Solver.MemSafe.Stor3.csumm_gs_of_wgs
