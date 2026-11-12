import InitECandidate.Solver.MemSafe.Cca.Chain
import InitECandidate.Solver.MemSafe.Ops7.Hyps
import InitECandidate.Solver.MemSafe.Wire.FoldR
import InitECandidate.Solver.MemSafe.Rec.WireR
import InitECandidate.Solver.MemSafe.Hooks.Rec
import InitECandidate.Solver.MemSafe.Shards.CtabFind

set_option autoImplicit false

/-!
# `compute_contract_address`: the summary (Cca)

`csumm_cca`: `CSumm … (nm "compute_contract_address") ccaSg []`, by a hand proof in the checker's
activation invariant with a heap window (the block kit of `Mod/Kit.lean`): `mark`, `buf = alloc(64)`,
`rlp_encode_bytes` (`≤ 29` bytes), `rlp_encode_word` (`≤ 9`), `rlp_list_header_len` (`≤ 9`),
`rlp_encode_list_header`, `h = alloc(32)`, `keccak256`, `memcpy(out, h + 12, 20)`, `heap_release`.
The offsets `p = p + w` that defeat the fold's alias analysis are bounded by the writers' value
specs (`WSpec`, `VSpec`): all cursor writes stay in `[buf, buf + 64)`.
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedTactic false
set_option linter.unreachableTactic false
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false

namespace InitECandidate.Solver.MemSafe.Cca
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Mod

variable {σ : Type} {X : Ctx 64}

/-- **`compute_contract_address`**: generic in the hook family; the callee summaries are
hypotheses (fold entries). -/
theorem csumm_cca {H : Hooks σ} (hF : FoldOK σ X Types.guestC H)
    (hRB : CSumm σ X Types.guestC H (nm "rlp_encode_bytes") Helpers.sigRlpEncodeBytes [])
    (hRW : CSumm σ X Types.guestC H (nm "rlp_encode_word") Helpers.sigRlpEncodeWord [])
    (hLH : CSumm σ X Types.guestC H (nm "rlp_list_header_len") sgLh [])
    (hEL : CSumm σ X Types.guestC H (nm "rlp_encode_list_header") sgEl [])
    (hKC : CSumm σ X Types.guestC H (nm "keccak256") sgKc [])
    (hMC : CSumm σ X Types.guestC H (nm "memcpy") Helpers.sigMemcpy []) :
    CSumm σ X Types.guestC H (nm "compute_contract_address") ccaSg [] := by
  refine csumm_of_heap_caps hF.hH hF.hC hF.hal hF.hAC hF.hNS (capsOK_nil _ _) ?_
  intro vs body callee rs hl s0 hs hloc Γ0 p0 ha hh
  rw [hF.hX] at hl
  obtain ⟨rfl, -, A', B', C', rfl, hsa, hsb, hsc, hla, hlb, hlc⟩ :=
    lookupCode_three code_cca (by decide) (by decide) (by decide) hl
  obtain ⟨A, rfl⟩ := val_of_shapeEq_one hsa
  obtain ⟨Nn, rfl⟩ := val_of_shapeEq_one hsb
  obtain ⟨O, rfl⟩ := val_of_shapeEq_one hsc
  set a : Act σ := actOf Types.guestC H ccaSg [] [V A, V Nn, V O] s0 Γ0 p0 with ha_def
  have hloc2 : a.s0.locals = callee := hloc
  have hloc' : LVs [("addr", A), ("nonce", Nn), ("out", O)] a.s0.locals := by
    intro p hp
    simp only [List.mem_cons, List.not_mem_nil, or_false] at hp
    rcases hp with rfl | rfl | rfl
    · rw [hloc2]; exact hla
    · rw [hloc2]; exact hlb
    · rw [hloc2]; exact hlc
  have hL0 : Layout a.C a.p0 a.Γ0 := by
    obtain ⟨p1, hp1, hord, hL, -⟩ := id hh.1
    rw [hh.2.1] at hp1
    cases hp1
    exact hL
  obtain ⟨v0, hv0, w0, hw0, hbuf0⟩ := Bn2.argAt ha.hargs0 (i := 2) (pt := .buf 20) rfl
  have hv0' : v0 = V O := by
    have : [V A, V Nn, V O][2]? = some v0 := hv0
    simpa using this.symm
  subst hv0'
  have hw0' : w0 = O := by
    have : wordOf (V O) = some w0 := hw0
    simpa [wordOf, V] using this.symm
  subst hw0'
  have hO : OutF a w0 :=
    ⟨hbuf0, fun x hx => Or.inr (Or.inl (WaveHelpers.argCells_buf_at (i := 2) (n := 20) rfl rfl hx))⟩
  have ce : CI σ X a :=
    { ha := ha
      hgrow := rfl
      hL0 := hL0
      rb := Fq.toSA' hRB
      rbF := Rec.wspec_rlp_encode_bytes hF.hX hF.hal
      rw_ := Fq.toSA' hRW
      rwF := Rec.wspec_rlp_encode_word hF.hX hF.hal
      lh := Fq.toSA' hLH
      lhF := Rec.footS_rlp_list_header_len hF.hX
      el := Fq.toSA' hEL
      kc := Fq.toSA' hKC
      mc := Fq.toSA' hMC
      hAl := allocSpec_alloc hF.hX
      hAc := summ_alloc_heap hF.hX hF.hH hF.hAC
      hRel := releaseSpec_heap_release hF.hX
      hMk := markSpec'_heap_mark hF.hX }
  have H := cca_chain ce A Nn w0 hO hloc' hh
  refine hoareG_conseq H (fun t _ ht => ht) (fun r t _ _ hq r' hr hna => ?_)
  obtain ⟨Γ', p', he, hh'⟩ := hq r' hr hna
  exact ⟨Γ', p', he, hh', fun v _ i rt w hrt => by simp [ccaSg] at hrt⟩

/-! ## The hypothesis of the CREATE handler -/

/-- `KeepsFp`: every callee of the body is in the `frame_mem_ptr`-keeping table and the body
assigns no `frame_mem_ptr`. -/
theorem keepsFp_cca {σ : Type} : KeepsFp σ guestCtx (nm "compute_contract_address") :=
  keepsFp_of_chk (tab := Shards.fptab26) (fun f hf => Wire.keepsFp_guest hf)
    (ps := [(nm "addr", .one), (nm "nonce", .one), (nm "out", .one)]) (bd := ccaBody) (rsh := .one)
    (by rw [guestCtx_code]; exact code_cca) (by decide +kernel)

/-- **`CcaHyp σ`**: the capability summary and `KeepsFp` of `compute_contract_address`. -/
theorem ccaHyp_proved {σ : Type} : Ops7.CcaHyp σ where
  summ := csumm_cca Rec.foldOK_guestR
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
    (ctab% Wire.tab_guestR)
  fp := keepsFp_cca

end InitECandidate.Solver.MemSafe.Cca

#print axioms InitECandidate.Solver.MemSafe.Cca.csumm_cca
#print axioms InitECandidate.Solver.MemSafe.Cca.keepsFp_cca
#print axioms InitECandidate.Solver.MemSafe.Cca.ccaHyp_proved
