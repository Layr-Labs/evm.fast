import InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.Main
import InitECandidate.Solver.Band3.All
import InitECandidate.Solver.MemSafe.Rec.WireR

set_option autoImplicit false

/-!
# The memory-safety summary of `get_storage_original` (sonnet-msum)

`Band3.GsoSumm σ` from the fold's checker, given two stated hypotheses.

* `DecNodeSumm σ`: the summary of `_decode_witness_node` (`⟨[any, any, any], [fits nodeU], [], true⟩`,
  no capabilities): fresh trie nodes only (`grows := true`), `PW = False`, the result a node or null.
  (`mark`/`try`/`catch`/`scratch_release` wrap `_decode_witness_node_mpt` and the
  `_decode_witness_node_body` loop; hand proof needed.) From it the checker accepts
  `decode_witness_to_mpt` at `storDwSig = ⟨[any, any], [], [], true⟩` (`stor_dw_ok`).
* `WstAnySumm σ`: `ws_storage_trie` at `⟨[any], [], [], true⟩` with the capabilities of `htab_set` on
  `tHTh32` (`wstCaps`). The checker proves the `[buf 32]` instance (`csumm_wst_buf`, from `DecNodeSumm`);
  `ws_get_storage` calls it with `root` read from an account record, which is not known to be `buf 32`.

Then `ws_get_storage` (`⟨[any, any], [], [], true⟩`, `wstCaps`) and `get_storage_original`
(`gsoSig`, `rpsrCaps`) are accepted by the checker (`stor_chunk_ok`, `decide`).
-/

set_option maxRecDepth 1000000

namespace InitECandidate.Solver.MemSafe.Stor
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

def storDwSig : Sig := ⟨[.any, .any], [], [], true⟩
def storWstBufSig : Sig := ⟨[.buf 32], [], [], true⟩
def storWstAnySig : Sig := ⟨[.any], [], [], true⟩
def storWgsSig : Sig := ⟨[.any, .any], [], [], true⟩

/-- The capabilities of `htab_set` on `tHTh32` (`tab26`-style `setTab`): header 43, array owner 14. -/
def storWstCaps : List Cap := [⟨anyG, 43, [], true⟩, ⟨anyG, 14, [], true⟩]

def storDnSig : Sig := ⟨[.any, .any, .any], [.fits Types.nodeU], [], true⟩

/-- Hypothesis 1: `_decode_witness_node` (hand proof; fresh nodes). -/
def DecNodeSumm (σ : Type) : Prop :=
  CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "_decode_witness_node") storDnSig []

/-- Hypothesis 2: `ws_storage_trie` on an arbitrary root pointer. -/
def WstAnySumm (σ : Type) : Prop :=
  CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie") storWstAnySig
    storWstCaps

def storTabN : CTab := (nm "_decode_witness_node", storDnSig, []) :: ShardsJL.tab26

def dwCand : MCand :=
  MCand.ofPair (nm "decode_witness_to_mpt") (declPair Guest.Software.guestFn_decode_witness_to_mpt)
    storDwSig []

def storTab0 : CTab := (nm "decode_witness_to_mpt", storDwSig, []) :: storTabN

def wstBufCand : MCand :=
  MCand.ofPair (nm "ws_storage_trie") (declPair Guest.Software.guestFn_ws_storage_trie)
    storWstBufSig storWstCaps

def wgsCand : MCand :=
  MCand.ofPair (nm "ws_get_storage") (declPair Guest.Software.guestFn_ws_get_storage)
    storWgsSig storWstCaps

def gsoCand : MCand :=
  MCand.ofPair (nm "get_storage_original") (declPair Guest.Software.guestFn_get_storage_original)
    Band3.gsoSig Band3.rpsrCaps

def storTab1 : CTab := (nm "ws_storage_trie", storWstAnySig, storWstCaps) :: storTab0

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem stor_dw_ok : chkChunk Types.guestC storTabN [dwCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem stor_dw_valid : ∀ e ∈ [dwCand], e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 265) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem stor_wstBuf_ok : chkChunk Types.guestC storTab0 [wstBufCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

set_option maxHeartbeats 0 in
set_option cbv.maxSteps 4000000000 in
theorem stor_chunk_ok : chkChunk Types.guestC storTab1 [wgsCand, gsoCand] = true := by
  conv => lhs; arg 3; cbv
  conv => lhs; arg 2; cbv
  conv => lhs; arg 1; cbv
  decide +kernel

theorem stor_wstBuf_valid : ∀ e ∈ [wstBufCand], e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 368) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil

theorem stor_chunk_valid : ∀ e ∈ [wgsCand, gsoCand], e.Valid :=
  mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 369) (by decide)) ⟨_, rfl⟩) rfl _ _)
  (mvalid_cons (MCand.valid_of (declPair_valid (List.getElem_mem (n := 379) (by decide)) ⟨_, rfl⟩) rfl _ _)
    mvalid_nil)

/-- **`decode_witness_to_mpt`'s summary**, from `_decode_witness_node` (the checker). -/
theorem csumm_dw (hN : DecNodeSumm σ) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "decode_witness_to_mpt") storDwSig [] :=
  chkChunk_sound Rec.foldOK_guestR [dwCand] storTabN stor_dw_ok stor_dw_valid
    (ctabSound_cons Rec.tab26_guestR hN) _ _ _ List.mem_cons_self

theorem stor_tab0_sound (hN : DecNodeSumm σ) :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) storTab0 :=
  ctabSound_cons (ctabSound_cons Rec.tab26_guestR hN) (csumm_dw hN)

/-- `ws_storage_trie` at `[buf 32]`, from `DecNodeSumm` (the checker). -/
theorem csumm_wst_buf (hN : DecNodeSumm σ) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_storage_trie") storWstBufSig
      storWstCaps :=
  chkChunk_sound Rec.foldOK_guestR [wstBufCand] storTab0 stor_wstBuf_ok stor_wstBuf_valid
    (stor_tab0_sound hN) _ _ _ List.mem_cons_self

theorem stor_tab1_sound (hN : DecNodeSumm σ) (hW : WstAnySumm σ) :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) storTab1 :=
  ctabSound_cons (stor_tab0_sound hN) hW

theorem stor_fold_sound (hN : DecNodeSumm σ) (hW : WstAnySumm σ) :
    CTabSound σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ))
      (chunkTab storTab1 [wgsCand, gsoCand]) :=
  chkChunk_sound Rec.foldOK_guestR [wgsCand, gsoCand] storTab1 stor_chunk_ok stor_chunk_valid
    (stor_tab1_sound hN hW)

/-- **`ws_get_storage`'s summary.** -/
theorem csumm_wgs (hN : DecNodeSumm σ) (hW : WstAnySumm σ) :
    CSumm σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "ws_get_storage") storWgsSig
      storWstCaps :=
  stor_fold_sound hN hW _ _ _ (by simp [chunkTab, wgsCand, gsoCand, MCand.ofPair])

/-- **`get_storage_original`'s summary** (`Band3.GsoSumm σ`). -/
theorem gsoSumm_guestR (hN : DecNodeSumm σ) (hW : WstAnySumm σ) : Band3.GsoSumm σ :=
  stor_fold_sound hN hW _ _ _ (by simp [chunkTab, gsoCand, MCand.ofPair])

set_option exponentiation.threshold 1000 in
/-- **`op_dispatch_condCost_done`**: open only in `hGT` (staged) and the two summaries above. -/
theorem op_dispatch_condCost_done {M : Nat}
    (hGT : Types.guestC.GT.lookup (nm "ws") = some (.nptr Types.tWSR))
    (hN : DecNodeSumm σ) (hW : WstAnySumm σ) :
    CondCost σ guestCtx Types.guestC (Hooks.guestHooksR (σ := σ)) (nm "op_dispatch")
      (Frames.sg1 []) (Frames.PreOpX Types.guestC Types.tEV Types.tCK Frames.GP Frames.GR M)
      (InitECandidate.Solver.Band.odCostFactor * (1 + max InitECandidate.Solver.MemSafe.BlsSlotCost.Dispatch.handlerBound (max Band3.oslB Band3.ossB))) :=
  Band3.op_dispatch_condCost_full hGT (gsoSumm_guestR hN hW)

end InitECandidate.Solver.MemSafe.Stor

#print axioms InitECandidate.Solver.MemSafe.Stor.csumm_wst_buf
#print axioms InitECandidate.Solver.MemSafe.Stor.csumm_wgs
#print axioms InitECandidate.Solver.MemSafe.Stor.gsoSumm_guestR
#print axioms InitECandidate.Solver.MemSafe.Stor.op_dispatch_condCost_done
