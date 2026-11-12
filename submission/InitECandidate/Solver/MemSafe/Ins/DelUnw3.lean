import InitECandidate.Solver.MemSafe.Ins.DelUnw2

set_option autoImplicit false

/-!
# The unwinding loop
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

/-- After the loop: `top = 0`. -/
def UJ0 (a : Act σ) (t : State σ) : Prop :=
  ∃ K KL Nd Lv G Res : BitVec 64, UJv a K KL Nd Lv G Res 0 t

theorem unwBody_G {vs : List (ValueHOL 64)}
    {s0 : State σ} {Γ0 : Gam} {p0 : Ptrs} (ha : ActOK (aD vs s0 Γ0 p0) guestCtx)
    (hL0 : Layout Types.guestC p0 Γ0) (hsp0 : p0.sp ≤ scratchEnd)
    {K KL Nd Lv G Res T : BitVec 64} (hT : T ≠ 0) {Rv : Gam → Ptrs → Mem → ValueHOL 64 → Prop} :
    HoareG σ guestCtx (GI (aD vs s0 Γ0 p0) (LKV (kvD K KL Nd Lv Res G T))
        (fun Γ q M => UE (aD vs s0 Γ0 p0) Res T Γ q M))
      dlUnwind (GPJ (aD vs s0 Γ0 p0) (UJ (aD vs s0 Γ0 p0) ) Rv) := by
  have hX0 := (Rec.foldOK_guestR (σ := σ)).hX
  set a := aD vs s0 Γ0 p0 with hadef
  have haC : a.C = Types.guestC := rfl
  have htopM : (nm "top", T) ∈ kvD K KL Nd Lv Res G T := by simp [kvD]
  unfold dlUnwind
  -- `var fnode = lds (top + 8)`
  refine gp_decVJ ha.hH (Inv := UJ a )
    (L1 := fun v m => LKV (kvD K KL Nd Lv Res G T) m ∧ m.lookup (nm "fnode") = some v ∧
      ∃ F : BitVec 64, v = .val (.word F))
    (E1 := fun v Γ q M => UE a Res T Γ q M ∧
      ∀ F : BitVec 64, v = .val (.word F) → F = rd M (T + BitVec.ofNat 64 8))
    (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh' hE v hv => ⟨hE, fun F hF => ?_⟩) ?_
    (fun t o h => uj_res ha.hH (by simp) o h)
  · have := Spec.Mpt.Dec.ev_ld (hL _ htopM) 8 v hv
    exact ⟨lkv_set (s := s) hL (kvD_fresh (by simp)) v, by simp [setVarHOLFinite, FUPDATE], _, this⟩
  · have hv' := Spec.Mpt.Dec.ev_ld (hL _ htopM) 8 v hv
    rw [hv'] at hF
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hF
    exact hF.symm
  intro v
  by_cases hw : ∃ F : BitVec 64, v = .val (.word F)
  swap
  · exact hoareG_false fun s _ h => hw h.1.2.2
  obtain ⟨F, rfl⟩ := hw
  refine hoareG_pre (P := GI a (LKV (kvF K KL Nd Lv Res G T F)) (fun Γ q M => UE a Res T Γ q M ∧
      F = rd M (T + BitVec.ofNat 64 8))) ?_
    (fun s _ ⟨⟨hL, hk, _⟩, Γ, q, he, hh, hsc, hE⟩ => ⟨lkv_cons hL hk, Γ, q, he, hh, hsc,
      hE.1, hE.2 F rfl⟩)
  have hfnM : (nm "fnode", F) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF]
  have htopF : (nm "top", T) ∈ kvF K KL Nd Lv Res G T F := by simp [kvF, kvD]
  refine gpj_seq (Inv1 := Inv1 a K KL Nd Lv G T F) ?_ ?_
  · -- the record's action
    refine hoareG_ite ?_ ?_
    · refine hoareG_pre (unwExt_G ha hL0 hsp0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv)
        (G := G) (Res := Res) (T := T) (F := F)) ?_
      rintro s _ ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, w, hw, hw0⟩
      obtain ⟨x, y, hx, hy, hc⟩ := cmp_true hw hw0
      have hx' := Spec.Mpt.Dec.ev_ld (hL _ htopF) 16 _ hx
      have hy' : y = BitVec.ofNat 64 2 := by
        rw [ev_cw] at hy; simpa using (Option.some.inj hy).symm
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx'
      subst hx' hy'
      have hk2 : rd s.memory (T + BitVec.ofNat 64 16) = 2 := equal_true hc
      obtain ⟨-, -, -, hrec, -⟩ := dl_unfold hE.1.2 hT
      rcases hrec with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
      · obtain ⟨o, ho, hb, ht⟩ := h2
        exact ⟨hL, Γ, q, he, hh, hsc, hE.1, ⟨o, ho, hb.trans hE.2.symm, ht⟩, h3⟩
      · exfalso
        have : (2 : BitVec 64) = 3 := hk2.symm.trans h1
        exact absurd this (by decide)
    · refine hoareG_pre (unwBr_G ha hL0 hsp0 (K := K) (KL := KL) (Nd := Nd) (Lv := Lv)
        (G := G) (Res := Res) (T := T) (F := F)) ?_
      rintro s _ ⟨⟨hL, Γ, q, he, hh, hsc, hE⟩, hc0⟩
      obtain ⟨x, y, hx, hy, hc⟩ := cmp_false hc0
      have hx' := Spec.Mpt.Dec.ev_ld (hL _ htopF) 16 _ hx
      have hy' : y = BitVec.ofNat 64 2 := by
        rw [ev_cw] at hy; simpa using (Option.some.inj hy).symm
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hx'
      subst hx' hy'
      have hk2 : rd s.memory (T + BitVec.ofNat 64 16) ≠ 2 := by
        intro h; simp [Flapjack.Compiler.Encoders.Asm.wordCmpHOL, h] at hc
      obtain ⟨-, -, -, hrec, -⟩ := dl_unfold hE.1.2 hT
      rcases hrec with ⟨h1, h2, h3⟩ | ⟨h1, h2, h3⟩
      · exact absurd h1 hk2
      · obtain ⟨o, ho, hb, ht⟩ := h2
        exact ⟨hL, Γ, q, he, hh, hsc, ⟨hE.1.1, ⟨o, ho, hb.trans hE.2.symm, ht⟩, h3⟩, hE.1.2⟩
  · -- `top = lds (top + 0)`
    refine hoareG_ex fun W => ?_
    have htopW : (nm "top", T) ∈ kvF K KL Nd Lv W G T F := by simp [kvF, kvD]
    refine gpj_mono (gp_assignAV ha.hH
      (L1 := fun (v : ValueHOL 64) m => ∃ T' : BitVec 64, v = .val (.word T') ∧
        LKV (kvF K KL Nd Lv W G T' F) m)
      (E1 := fun (v : ValueHOL 64) Γ q M => UE a W T Γ q M ∧ ∃ T' : BitVec 64,
        v = .val (.word T') ∧ DlG a Γ q M q.sp a.p0.sp T')
      (fun s hs hL v hv => ?_) (fun s Γ q hs hL hh hE v hv => ?_)) ?_
    · have hv' := Spec.Mpt.Dec.ev_ld (hL _ htopW) 0 v hv
      subst hv'
      exact ⟨_, rfl, lkv_upd_gen hL (by simp [kvF, kvD]) (by lkv_rest [kvF, kvD])⟩
    · have hv' := Spec.Mpt.Dec.ev_ld (hL _ htopW) 0 v hv
      obtain ⟨hlo, hhi', -, -, htail⟩ := dl_unfold hE.2 hT
      refine ⟨hE, _, hv', ?_⟩
      have : T + BitVec.ofNat 64 0 = T := by simp
      rw [this]
      exact dl_mono_lo (by omega) htail
    · rintro t ⟨v, ⟨T', rfl, hlk⟩, Γ, q, he, hh, hsc, hUE, T'', hT'', hD⟩
      simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hT''
      subst hT''
      exact ⟨K, KL, Nd, Lv, G, W, T', fun p hp => hlk p (by
        simp only [kvF, kvD, List.mem_cons, List.not_mem_nil, or_false] at hp ⊢
        rcases hp with rfl | rfl | rfl | rfl | rfl | rfl | rfl <;> simp),
        Γ, q, he, hh, hsc, hUE.1, hD⟩

end InitECandidate.Solver.MemSafe.Ins

#print axioms InitECandidate.Solver.MemSafe.Ins.unwBody_G
