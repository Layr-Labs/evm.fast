import InitECandidate.Solver.MemSafe.Ptx.PmcSt
import InitECandidate.Solver.MemSafe.Ptx.PmcPost

/-!
# F3: `process_message_call`, part D: the tail invariant `TB`

After the child returns (state `t1`, typing `Γ`, root frame `child`), the tail writes the twelve cells of `out`.
`TB Γ0 s0 Γ t1 out child W u`: `G Γ u`, `KB` from the entry `(Γ0, s0)`, `out` a `tMCO` object of `Γ` fresh
with respect to `Γ0`, the frame's `EV` object in `Γ`, the globals of `t1`, and the memory of `u` is that of
`t1` outside the offsets recorded in `W`, where `W j = some x` says the cell `out + j` holds `x`.
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
open InitECandidate.Solver.MemSafe.Struct

variable {σ : Type}

/-- `out`'s 96 bytes lie in no object of `Γ0`. -/
def OutFresh (Γ0 : Gam) (out : BitVec 64) : Prop :=
  ∀ a : Nat, out.toNat ≤ a → a < out.toNat + 96 → ¬ InObj Γ0 a

abbrev Wmap := Nat → Option (BitVec 64)

def upW (W : Wmap) (j : Nat) (x : BitVec 64) : Wmap := fun j' => if j' = j then some x else W j'

def TB (Γ0 : Gam) (s0 : State σ) (Γ : Gam) (t1 : State σ) (out child : BitVec 64) (W : Wmap)
    (u : State σ) : Prop :=
  G guestC (Hooks.guestHooksR (σ := σ)) Γ u ∧ KB Γ0 Γ s0 u ∧ OutIn Γ out ∧ OutFresh Γ0 out ∧
  (∃ E ∈ Γ, E.base = child ∧ E.ty = tEV) ∧ u.globals = t1.globals ∧
  (∀ j, W j ≠ none → j % 8 = 0 ∧ j < 96) ∧
  (∀ a, (∀ j, W j ≠ none → a ≠ out + BitVec.ofNat 64 j) → u.memory a = t1.memory a) ∧
  (∀ j x, W j = some x → rd u.memory (out + BitVec.ofNat 64 j) = x)

/-- Distinct objects of different types have different bases. -/
theorem base_ne_of_ty {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {x y : Obj}
    (hx : x ∈ Γ) (hy : y ∈ Γ) (hty : x.ty ≠ y.ty) : x.base ≠ y.base := by
  intro hb
  have hpx := (hL.1 x hx).2.2.1
  have hpy := (hL.1 y hy).2.2.1
  have hxe : InO x x.base := by
    have := inO_cell hord hL hx (k := 0) hpx
    simpa using this
  have hye : InO y y.base := by
    have := inO_cell hord hL hy (k := 0) hpy
    simpa using this
  have hb' := congrArg BitVec.toNat hb
  have := Hooks.gam_eq (Hooks.gamOK_of_layout hL) hx hy (n := x.base.toNat) hxe.1 hxe.2
    (by unfold Obj.lo; omega) (by unfold Obj.hi; unfold InO Obj.hi at hye; omega)
  exact hty (by rw [this])

section tb
variable {Γ0 Γ : Gam} {s0 t1 u : State σ} {out child : BitVec 64} {W : Wmap}

theorem tb_layout (hT : TB Γ0 s0 Γ t1 out child W u) :
    ∃ p, ptrsOf u = some p ∧ p.Ordered ∧ Layout guestC p Γ := by
  obtain ⟨p, hp, hord, hL, -⟩ := hT.1
  exact ⟨p, hp, hord, hL⟩

/-- A cell of an object whose base is not `out` is not changed by the tail. -/
theorem tb_cell (hT : TB Γ0 s0 Γ t1 out child W u) {x : Obj} (hx : x ∈ Γ) (hxb : x.base ≠ out)
    {k : Nat} (hk : x.HasSlot k) : rd u.memory (x.cell k) = rd t1.memory (x.cell k) := by
  obtain ⟨hG, hKB, ⟨O, hO, hOb, hOt, hOs⟩, hFr, hE, hgl, hdom, hag, hwr⟩ := hT
  obtain ⟨p, hp, hord, hL, -⟩ := hG
  have hm : u.memory (x.cell k) = t1.memory (x.cell k) := by
    refine hag _ fun j hj => ?_
    obtain ⟨h8, hj96⟩ := hdom j hj
    have := cell_ne hord hL hx hO (k := 8 * k) (k' := j) (by unfold Obj.HasSlot at hk; omega)
      (by omega) (Or.inl (by rw [hOb]; exact hxb))
    unfold Obj.cell
    rw [hOb] at this
    exact this
  unfold rd; rw [hm]

end tb

end InitECandidate.Solver.MemSafe.Ptx
