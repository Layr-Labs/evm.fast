import InitECandidate.Solver.MemSafe.Ins.DelDescBr

set_option autoImplicit false

/-!
# Descent ladder (`dlLadder`) and loop

`if node == 0 { res = 0 } else { var k = lds node; if k == 0 { mpt_fail }; node_invalidate(node);
 if k == 1 { leaf } else if k == 2 { ext } else { branch } }`
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

theorem dlLadder_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv Res T : BitVec 64} {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV (kvD K KL Nd Lv Res 0 T))
        (fun Γ q M => DE (aD vs s0 Γ0 p0) K KL Nd Lv Res T Γ q M))
      dlLadder (GPJ (aD vs s0 Γ0 p0) (JD (aD vs s0 Γ0 p0) K KL) Rv) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have hnodeM : (nm "node", Nd) ∈ kvD K KL Nd Lv Res 0 T := by simp [kvD]
  unfold dlLadder
  refine ite_val hnodeM (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
  · -- `res = 0`
    refine gpj_of_gp (gp_assign ha.hH (L' := LKV (kvD K KL Nd Lv 0 0 T)) (fun s hs hL v hv => ?_))
      (fun t ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨0, Nd, Lv, 0, T, hL, Γ, q, he, hh, hsc, hE.1, hE.2.1,
        hE.2.2.1, Or.inl rfl, hE.2.2.2.2⟩)
    have e : v = .val (.word 0) := by rw [ev_cw] at hv; exact (Option.some.inj hv).symm
    subst e
    exact lkv_upd_gen hL (by simp [kvD]) (by lkv_rest [kvD])
  have hfrk : ∀ p ∈ kvD K KL Nd Lv Res 0 T, p.1 ≠ nm "k" := kvD_fresh (Or.inl rfl)
  -- `var k = lds (node + 0)`
  refine gp_decVJ ha.hH (Inv := JD a K KL)
    (L1 := fun v m => LKV (kvD K KL Nd Lv Res 0 T) m ∧ m.lookup (nm "k") = some v ∧
      ∃ K0 : BitVec 64, v = .val (.word K0))
    (E1 := fun v Γ q M => DE a K KL Nd Lv Res T Γ q M ∧
      ∀ K0 : BitVec 64, v = .val (.word K0) → NdT Γ Nd K0)
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun K0 hK0 => ?_⟩) ?_
    (fun t o h => jd_res ha.hH (by simp) o h)
  · have := Spec.Mpt.Dec.ev_ld (hL _ hnodeM) 0 v hv
    exact ⟨lkv_set (s := s) hL hfrk v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · obtain ⟨o, ho, hb, ht⟩ := node_real ha hs (k := 0) (by omega) hE.1 (hL _ hnodeM) hv
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
  set kvK : List (MlS × BitVec 64) := (nm "k", K0) :: kvD K KL Nd Lv Res 0 T with hkvK
  refine hoareG_pre (P := GI a (LKV kvK) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M)) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 K0 rfl⟩)
  have hkm : (nm "k", K0) ∈ kvK := by simp [kvK]
  have hnodeK : (nm "node", Nd) ∈ kvK := List.mem_cons_of_mem _ hnodeM
  -- the hashed check
  refine gp_seqJ (L := LKV kvK) (E := fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧ K0 ≠ 0) ?_ ?_
  · refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc => ?_)
    · refine gp_call ha (sumA_of_csumm mptFail_R) (funSpec_of_funRet (funRet_mpt_fail hX0))
        (by simp) (by simp)
        (fun s Γ q _ _ _ _ vs1 hvs => ⟨(anyArgsG (by simp) rfl hvs).1,
          fun x hx => argCells_any (by simp) hx, fun _ => trivial⟩)
        (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hE hLc hQ co =>
          ⟨scrOld_nf0_co haC co rfl, fun ⟨v, hv⟩ => (hLc v hv).elim⟩)
    · have hne : K0 ≠ 0 := by
        intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc
      exact gp_skip fun s ⟨hL, Γ, q, he, hh, hsc, hE⟩ => ⟨hL, Γ, q, he, hh, hsc, hE, hne⟩
  -- `node_invalidate(node)`
  refine gp_seqJ (L := LKV kvK) (E := fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧ K0 ≠ 0) ?_ ?_
  · refine gp_callS ha sumSpecA_node_invalidate_G (funSpec_true _) (by simp [niSig]) (by simp [niSig])
      (fun s Γ q _ hL hh hE vs1 hvs => ?_)
      (fun s st vs1 callee r Γ Γ' q q' _ hL hvs he hsc hE hLc hQ co =>
        ⟨hQ.1, fun _ => ⟨dek_call haC rfl hL0 hsp0 co hsc hE.1, hE.2⟩⟩)
    have hev : evs s [lv (nm "node")] = some [.val (.word Nd)] :=
      evs_cons (ev_lw (hL _ hnodeK)) evs_nil
    rw [hev] at hvs
    cases hvs
    refine ⟨⟨rfl, fun i pt v hpt hv => ?_⟩, fun x => argCells_fitsany (by simp [niSig]),
      fun _ => trivial⟩
    rcases i with _ | i
    · simp [niSig] at hpt hv
      subst hpt hv
      exact ⟨Nd, rfl, hE.1.1.1⟩
    · simp [niSig] at hpt
  -- the dispatch on the tag
  refine hoareG_pre (P := GI a (LKV kvK) (fun Γ q M => DEK a K KL Nd Lv Res T K0 Γ q M ∧ K0 ≠ 0)) ?_
    (fun s _ h => h)
  refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc1 => ?_)
  · have hK1 : K0 = 1 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
    refine hoareG_pre (dlLeaf_G ha hL0 hsp0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := Res) (T := T) (K0 := K0) hK1) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩
  have h1 : K0 ≠ 1 := by
    intro h; subst h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] at hc1
  refine ite_val hkm (fun s h => h.1) (fun hc => ?_) (fun hc2 => ?_)
  · have hK2 : K0 = 2 := by simpa [Flapjack.Compiler.Encoders.Asm.wordCmpHOL] using hc
    refine hoareG_pre (dlExt_G ha hL0 hsp0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := Res) (T := T) (K0 := K0) hK2) ?_
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
    refine hoareG_pre (dlBr_G ha hL0 hsp0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv) (Res := Res) (T := T) (K0 := K0) hK3) ?_
    rintro s _ ⟨hL, Γ, q, he, hh, hsc, hE⟩
    exact ⟨hL, Γ, q, he, hh, hsc, hE.1⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.dlLadder_G
