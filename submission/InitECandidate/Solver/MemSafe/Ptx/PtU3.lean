import InitECandidate.Solver.MemSafe.Ptx.PtU2

/-!
# F3h: the delete table's frozen cells (`KeyCell`, `YSet`) and the facts `DelPreF` needs
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The key cells of the table whose header is at `d` (when `d` is a delete table of `Γ'`). -/
def KeyCell (Γ' : Gam) (t : State σ) (d : BitVec 64) (a : BitVec 64) : Prop :=
  (∃ D ∈ Γ', D.base = d ∧ D.ty = tHTs20) ∧ ∃ i : Nat, i < Inv.CNT t.memory d ∧
    Overlap (Inv.keyPtr t.memory d (Inv.ORD t.memory d (BitVec.ofNat 64 i))).toNat 20 a

/-- **The frozen cells**: cells of the dropped objects that are no key cell of the delete table. -/
def YSet (Γ' : Gam) (t : State σ) (d : BitVec 64) (a : BitVec 64) : Prop :=
  (∃ o ∈ Γ', o ∉ keepG Γ' ∧ ∃ k, o.HasSlot k ∧ a = o.cell k) ∧ ¬ KeyCell Γ' t d a

theorem yset_out {Γ' : Gam} {t : State σ} {q : Ptrs} {d a : BitVec 64} (hord : q.Ordered) (hL : Layout guestC q Γ')
    (h : YSet Γ' t d a) : ¬ InObj (keepG Γ') a.toNat ∧ q.Allocated a.toNat ∧ a.toNat % 8 = 0 := by
  obtain ⟨⟨o, ho, hno, k, hk, rfl⟩, -⟩ := h
  exact dropped_cell_out hord hL ho hno hk

section tab
variable {Γ' : Gam} {t : State σ} {q : Ptrs} {D : Obj}

theorem del_tabOK (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) (hD : D ∈ Γ') (hty : D.ty = tHTs20) :
    TabOK Γ' t D := by
  obtain ⟨p, hp, hord, hL, hF, -, hGl, hW⟩ := hG
  have hw := hW D hD
  have hk : hkOf D.ty = .tab := by rw [hty]; decide
  have : gwf Γ' t D := hw.1.1.1
  exact ((gwf_tab hk).1 this).2.2

theorem del_size (hL : Layout guestC q Γ') (hD : D ∈ Γ') (hty : D.ty = tHTs20) : 88 ≤ D.size := by
  have := (hL.1 D hD).2.2.2.1
  rw [hty] at this
  exact this

theorem owns_dropped (hord : q.Ordered) (hL : Layout guestC q Γ') (hD : D ∈ Γ') (hty : D.ty = tHTs20) {x : Obj}
    (hx : x ∈ Γ') (hown : Owns D x) : x ∉ keepG Γ' := by
  intro hk
  obtain ⟨-, hxr, hxs⟩ := mem_keepG.mp hk
  have hDb := Struct.obj_bounds hord hL hD
  have hDsc : (guestC.ty D.ty).region = .scratch := by rw [hty]; decide
  have h1 := hDb.2.2.2.2 hDsc
  have h2 := hord
  unfold Ptrs.Ordered at h2
  rcases hown with h | h | ⟨h, -⟩
  · have := base_unique hL hx hD h
    subst this
    rw [hty] at hxr
    exact absurd hxr (by decide)
  · apply hxs
    refine ⟨by rw [h]; exact tOwn_ge _, ?_⟩
    rw [h]; unfold tOwn
    simp only [Obj.lo] at h1
    omega
  · rw [h] at hxr
    exact absurd hxr (by decide)

/-- Keys: a key cell lies in the key array region. -/
theorem keycell_inr (hG : G guestC (Hooks.guestHooksR (σ := σ)) Γ' t) {d a : BitVec 64}
    (h : KeyCell Γ' t d a) :
    Spec.Inv.InR a (Inv.hdr t.memory d 32) ((Inv.hdr t.memory d 8).toNat * (Inv.CAP t.memory d + 1)) := by
  obtain ⟨⟨D, hD, hDb, hDt⟩, i, hi, hov⟩ := h
  have hT := del_tabOK hG hD hDt
  obtain ⟨hwf, -, -, hkl⟩ := hT
  subst hDb
  have hkl' : Inv.hdr t.memory D.base 0 = BitVec.ofNat 64 20 := by
    have : htKL D.ty = 20 := by rw [hDt]; decide
    rw [← this]; exact hkl
  have hI : (BitVec.ofNat 64 i).toNat < Inv.CNT t.memory D.base := by
    rw [BitVec.toNat_ofNat]
    have h2 : i < 2 ^ 64 := lt_of_lt_of_le hi (by unfold Inv.CNT; have := (Inv.hdr t.memory D.base 24).isLt; omega)
    rw [Nat.mod_eq_of_lt h2]; exact hi
  obtain ⟨h8, hreg⟩ := tbl_key_facts hwf hkl' hI
  obtain ⟨hc8, hc1, hc2⟩ := hov
  apply hreg a <;> omega

end tab

end InitECandidate.Solver.MemSafe.Ptx
