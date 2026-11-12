import InitECandidate.Solver.MemSafe.Ins.InsBr
import InitECandidate.Solver.MemSafe.Ins.Inval

set_option autoImplicit false

/-!
# `_mpt_insert_node`: the ladder
-/

set_option maxRecDepth 100000
set_option linter.unusedVariables false
set_option linter.unusedSectionVars false
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ins
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Rec InitECandidate.Solver.MemSafe.WaveHelpers
open InitECandidate.Solver.MemSafe.Dn

variable {σ : Type} {X : Ctx 64}

theorem iLadder_G {sg : Sig}
    (hsg : sg.grows = true) {vs : List (ValueHOL 64)} {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs}
    (ha : ActOK (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) guestCtx)
    {K KL VP VL Nd Lv Res Sl : BitVec 64} (hLv : Lv.toNat ≤ KL.toNat)
    (hV0 : Hooks.VInR Types.tVAL Γ0 VP VL)
    {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (LKV (kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0))
        (fun Γ _ _ => MidF K KL Nd Lv Res Sl 0 0 0 0 Γ))
      iLadder
      (GPJ (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0)
        (Mid (actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0) K KL VP VL) Rv) := by
  have hX := (Rec.foldOK_guestR (σ := σ)).hX
  set a := actOf Types.guestC (Hooks.guestHooksR (σ := σ)) sg insCaps vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hnodeM : (nm "node", Nd) ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 := by simp [kvT, kvJ]
  unfold iLadder
  refine ite_val hnodeM (fun s h => h.1) (fun hc => lf0_G hsg ha hV0) (fun hc => ?_)
  have hNd : Nd ≠ 0 := by
    intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
  -- `var k = lds (node + 0)`
  have hfrk : ∀ p ∈ kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0, p.1 ≠ nm "k" :=
    kvT_fresh (Or.inl rfl)
  refine gp_decVJ ha.hH (Inv := Mid a K KL VP VL)
    (L1 := fun v m => LKV (kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0) m ∧ m.lookup (nm "k") = some v ∧
      ∃ K0 : BitVec 64, v = .val (.word K0))
    (E1 := fun v Γ _ _ => MidF K KL Nd Lv Res Sl 0 0 0 0 Γ ∧
      ∀ K0 : BitVec 64, v = .val (.word K0) → NdT Γ Nd K0)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun K0 hK0 => ?_⟩) ?_
    (fun t o h => mid_res ha.hH (Or.inl rfl) o h)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnodeM) 0 v hv
    exact ⟨lkv_set (s := s) hL hfrk v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · obtain ⟨o, ho, hb, ht⟩ := node_real ha hs (k := 0) (by omega) hE.1.1 (hL _ hnodeM) hv
    have hv' := Spec.Mpt.Dec.ev_ld (hL _ hnodeM) 0 v hv
    rw [hv'] at hK0
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hK0
    subst hK0
    have := ndT_of_obj hh'.1 ho ht
    rw [hb] at this
    simpa using this
  intro v
  by_cases hw : ∃ K0 : BitVec 64, v = .val (.word K0)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨K0, rfl⟩ := hw
  set kvK := (nm "k", K0) :: kvT K KL VP VL Nd Lv Res Sl 0 0 0 0 0 with hkvK
  refine hoareG_pre (P := GI a (LKV kvK) (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 K0 rfl⟩)
  have hkm : (nm "k", K0) ∈ kvK := by simp [kvK]
  have hnodeK : (nm "node", Nd) ∈ kvK := List.mem_cons_of_mem _ hnodeM
  -- the hashed check
  refine gp_seqJ (L := LKV kvK) (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ K0 ≠ 0) ?_ ?_
  · refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · refine gp_call ha (sumA_of_csumm mptFail_R) (funSpec_of_funRet (funRet_mpt_fail hX))
        (by simp) (by simp)
        (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
          fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
        (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
          ⟨scrOld_nf0_co haC co rfl, fun ⟨v, hv⟩ => (hLc v hv).elim⟩)
    · have hne : K0 ≠ 0 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE, hne⟩
  -- `node_invalidate(node)`
  refine gp_seqJ (L := LKV kvK) (E := fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ K0 ≠ 0) ?_ ?_
  · refine gp_call ha sumSpecA_node_invalidate_G (funSpec_true _) (by simp [niSig]) (by simp [niSig])
      (fun s Γ q _ hL hh hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
        ⟨hQ.1, fun _ => ⟨eK_ext co.ext hE.1, hE.2⟩⟩)
    have hev : evs s [lv (nm "node")] = some [.val (.word Nd)] :=
      evs_cons (ev_lw (hL _ hnodeK)) evs_nil
    rw [hev] at hvs
    cases hvs
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [niSig]),
      fun _ => trivial⟩
    rcases i with _ | i
    · simp [niSig] at hpt hv
      subst hpt hv
      exact ⟨Nd, rfl, hE.1.1.1.1⟩
    · simp [niSig] at hpt
  -- the dispatch on the tag
  refine hoareG_pre (P := GI a (LKV kvK) (fun Γ _ _ => EK K KL Nd Lv Res Sl K0 Γ ∧ K0 ≠ 0)) ?_
    (fun s _ h => h)
  refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc1 => ?_)
  · have hK1 : K0 = 1 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
    refine hoareG_pre (lfIns_G hsg ha (K := K) (KL := KL) (VP := VP) (VL := VL) (Nd := Nd) (Lv := Lv) (Res := Res) (Sl := Sl) (K0 := K0) hK1 hV0) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩
  have h1 : K0 ≠ 1 := by
    intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc1
  refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc2 => ?_)
  · have hK2 : K0 = 2 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
    refine hoareG_pre (iExt_G hsg ha (K := K) (KL := KL) (VP := VP) (VL := VL) (Nd := Nd) (Lv := Lv) (Res := Res) (Sl := Sl) (K0 := K0) hK2 hLv hV0) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩
  · have h2 : K0 ≠ 2 := by
      intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc2
    by_cases hK3 : K0 = 3
    swap
    · refine hoareG_false fun s _ ⟨_, Γ, q, _, _, _, hE⟩ => ?_
      rcases hE.1.2 with ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ | ⟨o, ho, hb, ht, h0⟩ |
        ⟨o, ho, hb, ht, h0⟩
      · exact hE.2 h0
      · exact h1 h0
      · exact h2 h0
      · exact hK3 h0
    refine hoareG_pre (iBr_G ha (K := K) (KL := KL) (VP := VP) (VL := VL) (Nd := Nd) (Lv := Lv) (Res := Res) (Sl := Sl) (K0 := K0) hK3 hLv hV0) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.iLadder_G
