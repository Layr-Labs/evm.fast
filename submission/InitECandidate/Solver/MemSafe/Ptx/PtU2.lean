import InitECandidate.Solver.MemSafe.Ptx.PtU1

/-!
# F3h: the frozen cells `YSet` of the re-anchored tail
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

section cells
variable {Γ' : Gam} {q : Ptrs}

theorem same_obj_of_overlap (hL : Layout guestC q Γ') {o o' : Obj} (ho : o ∈ Γ') (ho' : o' ∈ Γ') {a : Nat}
    (h1 : o.lo ≤ a) (h2 : a < o.hi) (h1' : o'.lo ≤ a) (h2' : a < o'.hi) : o = o' := by
  by_contra hne
  rcases layout_disj hL ho ho' hne with h | h <;> omega

theorem cell_of_range (hord : q.Ordered) (hL : Layout guestC q Γ') {x : Obj} (hx : x ∈ Γ') {a : BitVec 64}
    (h1 : x.lo ≤ a.toNat) (h2 : a.toNat < x.hi) (h8 : a.toNat % 8 = 0) : ∃ k, x.HasSlot k ∧ a = x.cell k := by
  have hx8 := (hL.1 x hx).1
  have hs8 := (hL.1 x hx).2.1
  simp only [Obj.hi, Obj.lo] at h1 h2 hx8
  have hk : x.HasSlot ((a.toNat - x.base.toNat) / 8) := by
    unfold Obj.HasSlot; omega
  refine ⟨_, hk, ?_⟩
  apply BitVec.eq_of_toNat_eq
  rw [(cell_toNat hord hL hx hk).1]
  simp only [Obj.lo]
  omega

theorem cell_range (hord : q.Ordered) (hL : Layout guestC q Γ') {x : Obj} (hx : x ∈ Γ') {k : Nat}
    (hk : x.HasSlot k) : x.lo ≤ (x.cell k).toNat ∧ (x.cell k).toNat < x.hi := by
  have := (cell_toNat hord hL hx hk).1
  unfold Obj.HasSlot at hk
  simp only [Obj.hi, Obj.lo] at this ⊢
  omega

/-- A cell of a dropped object of `Γ'` is outside the kept typing and allocated. -/
theorem dropped_cell_out (hord : q.Ordered) (hL : Layout guestC q Γ') {o : Obj} (ho : o ∈ Γ') (hno : o ∉ keepG Γ')
    {k : Nat} (hk : o.HasSlot k) :
    ¬ InObj (keepG Γ') (o.cell k).toNat ∧ q.Allocated (o.cell k).toNat ∧ (o.cell k).toNat % 8 = 0 := by
  have hr := cell_range hord hL ho hk
  refine ⟨?_, Helpers.allocated_of_inObj hL (cell_in hord hL ho hk), ?_⟩
  · rintro ⟨o', ho', h1, h2⟩
    have ho'Γ : o' ∈ Γ' := (mem_keepG.mp ho').1
    have := same_obj_of_overlap hL ho ho'Γ hr.1 hr.2 h1 h2
    subst this
    exact hno ho'
  · rw [(cell_toNat hord hL ho hk).1]
    have := (hL.1 o ho).1
    simp only [Obj.lo] at this ⊢
    omega

end cells

end InitECandidate.Solver.MemSafe.Ptx
