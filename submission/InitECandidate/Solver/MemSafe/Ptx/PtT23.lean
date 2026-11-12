import InitECandidate.Solver.MemSafe.Ptx.PtT22

/-!
# F3g: loop 2 (copy of the log record pointers into the stable list's array)
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
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem bv_mul_eight {x : BitVec 64} (hx : x.toNat < 2 ^ 58) : x * BitVec.ofNat 64 8 = BitVec.ofNat 64 (8 * x.toNat) := by
  apply BitVec.eq_of_toNat_eq
  rw [BitVec.toNat_mul, BitVec.toNat_ofNat, BitVec.toNat_ofNat]
  have h8 : (8 : Nat) % 2 ^ 64 = 8 := by norm_num
  rw [h8, Nat.mod_eq_of_lt (by omega : x.toNat * 8 < 2 ^ 64), Nat.mod_eq_of_lt (by omega : 8 * x.toNat < 2 ^ 64)]
  omega

section tb4
variable {K : TlCtx σ} {ref : BitVec 64 → BitVec 64} {Z : BitVec 64 → Prop} {O : List Obj} {En : Env}

/-- **Loop 2's body**: `st stable_lp + i * 8, lp[i]; i = i + 1` for `i < nl ≤ cap`. -/
theorem hn_body2 {q nlw : BitVec 64} {c : Nat} (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (harr : (⟨q, tLSTAh, 8 * c⟩ : Obj) ∈ O) (hcl : nlw.toNat ≤ c) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hsp : En (nm "stable_lp") = some (.val (.word q))) (hnl : En (nm "nl") = some (.val (.word nlw)))
    (hi : En (nm "i") = none ∨ True) (x : BitVec 64) (hx : x.toNat < nlw.toNat) :
    HN (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word x)))) ptS182
      (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word (x + BitVec.ofNat 64 1))))) := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS182
  have h58 : (2 : Nat) ^ 25 < 2 ^ 58 := by norm_num
  have hxb : x.toNat < 2 ^ 58 := by omega
  refine hseqN (P1 := PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word x)))) ?_ ?_
  · unfold ptS183
    refine hn_stGen ?_
    intro s Γ p hr hpa w v hw hv
    obtain ⟨arr', harr', hb, ht, hs⟩ := hr.hO _ harr
    have hk : arr'.HasSlot x.toNat := by unfold Obj.HasSlot; simp only at hb ht hs; omega
    have hsp' : s.locals.lookup (nm "stable_lp") = some (.val (.word q)) := hpa.2 _ _ (by
      rw [env_set_ne _ _ (by decide)]; exact hsp)
    have hi' : s.locals.lookup (nm "i") = some (.val (.word x)) := hpa.2 _ _ (env_set_self _ _ _)
    have h1 := evI_add (evI_lv hsp') (evI_mul (evI_lv hi') (evI_cw s 8))
    have hw' := h1 _ hw
    simp only [ValueHOL.val.injEq, HolWordLab.word.injEq] at hw'
    rw [bv_mul_eight hxb] at hw'
    have hcell : w = arr'.cell x.toNat := by rw [hw']; unfold Obj.cell; rw [hb]
    obtain ⟨xx, rfl⟩ := ev_load_word hv
    refine ⟨xx, rfl, ?_, ?_, ?_⟩
    · rw [hcell]
      exact z_ne_cell hr (bc_ext hr hr.ext hBC) harr' (by rw [ht]; exact lstA_not_block (Or.inl rfl)) hk
    · rw [hcell]
      exact cell_in (tl_ord hr) (tl_layout hr) harr' hk
    · rw [hcell]
      exact G_st_astore hr.hG harr' (by rw [ht]; exact Or.inl rfl) hk xx
  · refine hoare_post (hassignT_g hB (w' := x + BitVec.ofNat 64 1) (fun s hpa v hv => ?_))
      (fun r t _ _ h => ⟨h.1, pag_mono h.2 (fun y v hy => by rw [env_set_set_same]; exact hy) (fun s h => h)⟩)
    have hi' : s.locals.lookup (nm "i") = some (.val (.word x)) := hpa.2 _ _ (env_set_self _ _ _)
    exact (evI_add (evI_lv hi') (evI_cw s 1)) v hv

/-- `ptS164`: loop 2, then the continuation. -/
theorem tb4 {q nlw : BitVec 64} {c : Nat} {QT : Option (PanSemResultExact 64) → State σ → Prop}
    (hBC : ∀ a, Z a → ∃ o ∈ K.E.Γ0, o.ty ∈ bkTys ∧ ∃ k, o.HasSlot k ∧ a = o.cell k)
    (harr : (⟨q, tLSTAh, 8 * c⟩ : Obj) ∈ O) (hcl : nlw.toNat ≤ c) (hnlb : nlw.toNat ≤ 2 ^ 25)
    (hsp : En (nm "stable_lp") = some (.val (.word q))) (hnl : En (nm "nl") = some (.val (.word nlw)))
    (hk : Hoare σ guestCtx (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word (BitVec.ofNat 64 nlw.toNat))))) ptS165 QT) :
    Hoare σ guestCtx (PAg (TL K.A ref Z O) (En.set (nm "i") (.val (.word 0)))) ptS164 QT := by
  have hB := bloc_tl K.A ref Z (O := O)
  unfold ptS164
  refine hseqN ?_ hk
  unfold ptS166
  have hnl' : ∀ x : BitVec 64, (En.set (nm "i") (.val (.word x))) (nm "nl") = some (.val (.word nlw)) := fun x => by
    rw [env_set_ne _ _ (by decide)]; exact hnl
  have h25 : (2 : Nat) ^ 25 < 2 ^ 63 := by norm_num
  have h58 : (2 : Nat) ^ 25 < 2 ^ 58 := by norm_num
  refine hn_cloopG (N := nlw.toNat) hB ?_ ?_ (by omega) ?_
  · intro x s hx hpa hc
    exact cond_lt_gen (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (hnl' x))) (by omega) (by omega) hc
  · intro x s hx hpa hc
    exact cond_lt_gen_false (evI_lv (hpa.2 _ _ (env_set_self _ _ _))) (evI_lv (hpa.2 _ _ (hnl' x))) (by omega) (by omega) hc
  · intro x hx
    exact hn_body2 hBC harr hcl hnlb hsp hnl (Or.inr trivial) x hx

end tb4

end InitECandidate.Solver.MemSafe.Ptx
