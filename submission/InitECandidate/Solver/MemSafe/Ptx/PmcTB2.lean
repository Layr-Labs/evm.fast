import InitECandidate.Solver.MemSafe.Ptx.PmcTB

/-!
# F3: `process_message_call`, part E: one store into `out` keeps `TB`
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

section tb2
variable {Γ0 Γ : Gam} {s0 t1 u : State σ} {out child : BitVec 64} {W : Wmap}

/-- The cells of `out` are no block cells of the entry typing. -/
theorem out_not_bcell (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {O : Obj} {Γ : Gam} {p : Ptrs}
    (hord : p.Ordered) (hL : Layout guestC p Γ) (hO : O ∈ Γ) (hOs : 96 ≤ O.size)
    (hFr : OutFresh Γ0 O.base) {j : Nat} (hj : j < 96) :
    ¬ KCell guestC Γ0 (O.base + BitVec.ofNat 64 j) := by
  intro hK
  obtain ⟨o, ho, -, k', hk', -, ha⟩ := kCell_keep hK
  obtain ⟨p0, hp0, hord0, hL0, -⟩ := hG0
  have hin : InO o (o.base + BitVec.ofNat 64 (8 * k')) :=
    inO_cell hord0 hL0 ho (k := 8 * k') (by unfold Obj.HasSlot at hk'; omega)
  have ha' : O.base + BitVec.ofNat 64 j = o.base + BitVec.ofNat 64 (8 * k') := ha
  have hn := cell_addr hord hL hO (k := j) (by omega)
  rw [ha'] at hn
  refine hFr (o.base + BitVec.ofNat 64 (8 * k')).toNat ?_ ?_ ⟨o, ho, hin.1, hin.2⟩
  · unfold Obj.lo at hn; omega
  · unfold Obj.lo at hn; omega

theorem tb_store (hG0 : G guestC (Hooks.guestHooksR (σ := σ)) Γ0 s0) {j : Nat} (hj8 : j % 8 = 0)
    (hj : j < 96) (x : BitVec 64) (hT : TB Γ0 s0 Γ t1 out child W u) :
    TB Γ0 s0 Γ t1 out child (upW W j x)
      { u with memory := Frames.upd u.memory (out + BitVec.ofNat 64 j) x } := by
  have hT' := hT
  obtain ⟨hG, hKB, ⟨O, hO, hOb, hOt, hOs⟩, hFr, hE, hgl, hdom, hag, hwr⟩ := hT
  obtain ⟨p, hp, hord, hL, -⟩ := id hG
  have hcell : O.cell (j / 8) = out + BitVec.ofNat 64 j := by
    unfold Obj.cell; rw [hOb]; congr 2; omega
  have hslot : O.HasSlot (j / 8) := by unfold Obj.HasSlot; omega
  have hGn : G guestC (Hooks.guestHooksR (σ := σ)) Γ
      { u with memory := Frames.upd u.memory (out + BitVec.ofNat 64 j) x } := by
    have := D0.G_st_block hG hO (by rw [hOt]; decide) hslot
      (blk_prot (t := O.ty) (Or.inr (Or.inr hOt)) (j / 8)) x
    rwa [hcell] at this
  have hnb : ¬ KCell guestC Γ0 (out + BitVec.ofNat 64 j) := by
    have := out_not_bcell hG0 hord hL hO hOs (by rw [hOb]; exact hFr) hj
    rwa [hOb] at this
  have hne : ∀ j', j' < 96 → j' ≠ j → out + BitVec.ofNat 64 j' ≠ out + BitVec.ofNat 64 j := by
    intro j' hj' hne
    have := cell_ne hord hL hO hO (k := j') (k' := j) (by omega) (by omega) (Or.inr hne)
    rwa [hOb] at this
  obtain ⟨hk1, hk2, p0, hp0, ho0⟩ := hKB
  refine ⟨hGn, ⟨keepH_congr rfl rfl hk1, bkeep_of_upd hk2 hnb, p0, hp0, ho0⟩, ⟨O, hO, hOb, hOt, hOs⟩, hFr,
    hE, hgl, ?_, ?_, ?_⟩
  · intro j' hj'
    unfold upW at hj'
    by_cases h : j' = j
    · subst h; exact ⟨hj8, hj⟩
    · rw [if_neg h] at hj'; exact hdom j' hj'
  · intro a ha
    show Frames.upd u.memory (out + BitVec.ofNat 64 j) x a = t1.memory a
    have haj : a ≠ out + BitVec.ofNat 64 j := ha j (by unfold upW; simp)
    rw [Frames.upd_ne _ _ haj]
    refine hag a fun j' hj' => ha j' ?_
    unfold upW
    by_cases h : j' = j
    · rw [if_pos h]; simp
    · rw [if_neg h]; exact hj'
  · intro j' y hy
    unfold upW at hy
    by_cases h : j' = j
    · rw [if_pos h] at hy
      cases hy
      subst h
      exact rd_upd_self _ _ _
    · rw [if_neg h] at hy
      show rd (Frames.upd u.memory (out + BitVec.ofNat 64 j) x) (out + BitVec.ofNat 64 j') = y
      rw [rd_upd_ne _ _ (hne j' (hdom j' (by rw [hy]; simp)).2 h)]
      exact hwr j' y hy

end tb2

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.tb_store
