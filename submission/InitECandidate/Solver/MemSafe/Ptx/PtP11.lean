import InitECandidate.Solver.MemSafe.Ptx.PtP10

/-!
# F3f: `empty` and the branch on `tx.to` (`ptS104` to `ptS108`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry

variable {σ : Type}

theorem hoare_ex2 {E : PtE σ} {En : Env} {S : FS} {wm : BitVec 64} {c : ProgHOL 64}
    {Q : Option (PanSemResultExact 64) → State σ → Prop}
    {t0 : BitVec 64} (h : ∀ v32 v96 v120 : BitVec 64, Hoare σ guestCtx (PA E En (Sb S wm v32 v96 v120 t0)) c Q) :
    Hoare σ guestCtx (fun t => ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 t0) t) c Q :=
  fun s hs ⟨v32, v96, v120, hp⟩ => h v32 v96 v120 s hs hp

theorem msv_ne_sact {y : MlS} (hy : MsV y) : y ≠ nm "sa" ∧ y ≠ nm "ct" := by
  unfold MsV AdV at hy
  rcases hy with (rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl) | rfl <;> decide

/-- The facts after the branch, as a composed fact set. -/
def Sc (S : FS) (wm v32 v96 v120 t0 : BitVec 64) : FS :=
  addF (addF (addF (addF (addF (addF (addF S [Fct.bufok0 v32 20]) [Fct.prop (v120.toNat + 63 < 2 ^ 64)])
    [Fct.prop (v96.toNat < 2 ^ 32)]) [Fct.memw (wm + BitVec.ofNat 64 32) v32])
    [Fct.memw (wm + BitVec.ofNat 64 96) v96]) [Fct.memw (wm + BitVec.ofNat 64 120) v120]) [tgtF t0 v32]

theorem sc_sub_sb (S : FS) (wm v32 v96 v120 t0 : BitVec 64) : ∀ f, Sc S wm v32 v96 v120 t0 f → Sb S wm v32 v96 v120 t0 f := by
  intro f hf
  unfold Sc Sb addF at *
  simp only [List.mem_cons, List.mem_singleton, List.not_mem_nil, or_false] at hf ⊢
  tauto

theorem sc_ofS (S : FS) (wm v32 v96 v120 t0 : BitVec 64) : ∀ f, S f → Sc S wm v32 v96 v120 t0 f :=
  fun f h => Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl (Or.inl h))))))

/-- The branch on `tx.to` (`ptS105`) and the `skip` after it. -/
theorem pt_branch {E : PtE σ} {En : Env} {S : FS} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    {rp rl : BitVec 64} {buf n : Nat} {CV : List (BitVec 64)} {w wt wa ak nv nkv wm we : BitVec 64} {nbl : Nat}
    {L : List (Nat × BitVec 64)}
    (hP : PtPre E) (K : MsK E En S rp rl buf n CV w wt wa ak nv nkv wm nbl L)
    (hL : ∀ p ∈ L, p.1 ≤ 40 ∧ p.1 ≠ 32 ∧ p.1 % 8 = 0) (hemp : En (nm "empty") = some (.val (.word we)))
    (hsa : En (nm "sa") = none) (hct : En (nm "ct") = none)
    (hk : ∀ v32 v96 v120 : BitVec 64,
      MsK E En (Sc S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152))) rp rl buf n CV w wt wa ak nv nkv wm nbl
        ((120, v120) :: (96, v96) :: (32, v32) :: L) →
      Hoare σ guestCtx (PA E En (Sc S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)))) ptS108 QT) :
    Hoare σ guestCtx (PA E En S) ptS105 QT := by
  have htx := K.A.C0.tx
  unfold ptS105
  refine hseqN (P1 := fun t => ∃ v32 v96 v120 : BitVec 64, PA E En (Sb S wm v32 v96 v120 (rd E.s0.memory (E.tx + BitVec.ofNat 64 152))) t)
    (hn_ite (P := PA E En S) (c := .cmp .equal (.load .one (.op .add [lv (nm "tx"), cw 152])) (cw 0)) ?_ ?_) ?_
  · by_cases hTO : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) = 0
    · exact hn_pre (pt_then hP K hL hemp hsa hct hTO) (fun s _ h => h.1)
    · intro s hs ⟨hpa, w', hw, hw0⟩
      exfalso
      exact hTO (cond_eq_gen (evI_ldtx hP htx (by norm_num) (by norm_num) s hpa) (evI_cw s 0)
        (condTrue_iff.mpr ⟨w', hw, hw0⟩))
  · by_cases hTO : rd E.s0.memory (E.tx + BitVec.ofNat 64 152) = 0
    · intro s hs ⟨hpa, hw⟩
      exfalso
      exact cond_eq_gen_false (evI_ldtx hP htx (by norm_num) (by norm_num) s hpa) (evI_cw s 0) hw hTO
    · exact hn_pre (pt_else hP K hL hemp hTO) (fun s _ h => h.1)
  · refine hoare_ex2 (fun v32 v96 v120 => ?_)
    unfold ptS106
    refine hseqN hn_skip ?_
    have K5a := msk_addF K [Fct.bufok0 v32 20]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_bufok0 _ _)
    have K5b := msk_addF K5a [Fct.prop (v120.toNat + 63 < 2 ^ 64)]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
    have K5b2 := msk_addF K5b [Fct.prop (v96.toNat < 2 ^ 32)]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_prop _)
    have K5c := msk_addM K5b2 (off := 32) (x := v32) (by norm_num) (by norm_num)
    have K5c2 := msk_addM K5c (off := 96) (x := v96) (by norm_num) (by norm_num)
    have K5d := msk_addM K5c2 (off := 120) (x := v120) (by norm_num) (by norm_num)
    have K5e := msk_addF K5d [tgtF (rd E.s0.memory (E.tx + BitVec.ofNat 64 152)) v32]
      (by intro X hX; rw [List.mem_singleton] at hX; subst hX; exact benign_tgtF _ _)
    exact hoare_pre (hk v32 v96 v120 K5e) (fun t _ ht => pa_mono ht (fun x v h => h) (sc_sub_sb S wm v32 v96 v120 _))

end InitECandidate.Solver.MemSafe.Ptx
