import InitECandidate.Solver.MemSafe.Exb.PhW

/-!
# `payload_header`: a `tPL` cell keeps its entry value

`pl_cell_const`: in an activation whose entry typing holds a `tPL` object at `PL` (and whose arguments name no cells), every cell of that
record has, at any later `Heap` state, the value it had at the entry. Used to tie the withdrawal count read by `payload_header` to the entry
memory (`PhRx`'s new conjunct).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option linter.unusedVariables false

namespace InitECandidate.Solver.MemSafe.Exb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe

variable {σ : Type}

/-- The entry data `pl_cell_const` needs. -/
def PlE (a : Act σ) (PL : BitVec 64) : Prop :=
  a.caps = [] ∧ (∀ x, ¬ ArgCells a.sg.params a.vs x) ∧
    (∃ o0 ∈ a.Γ0, o0.base = PL ∧ o0.ty = Types.tPL ∧ 136 ≤ o0.size) ∧
    (∀ o ∈ a.Γ0, o.ty = Types.tPL → ∀ k, o.HasSlot k → a.p0.Allocated (o.cell k).toNat)

theorem pl_cell_const {a : Act σ} (haC : a.C = Types.guestC) (hcaps : a.caps = [])
    (hps : ∀ x, ¬ ArgCells a.sg.params a.vs x)
    {Γ : Gam} {q : Ptrs} {s : State σ} (hh : Heap a Γ q s) {PL : BitVec 64}
    (hpl0 : ∃ o0 ∈ a.Γ0, o0.base = PL ∧ o0.ty = Types.tPL ∧ 136 ≤ o0.size)
    (hA0 : ∀ o ∈ a.Γ0, o.ty = Types.tPL → ∀ k, o.HasSlot k → a.p0.Allocated (o.cell k).toNat)
    {k : Nat} (hk : k < 17) :
    rd s.memory (PL + BitVec.ofNat 64 (8 * k)) = rd a.s0.memory (PL + BitVec.ofNat 64 (8 * k)) := by
  obtain ⟨o0, ho0, hb0, ht0, hsz0⟩ := hpl0
  have hHs0 : o0.HasSlot k := by unfold Obj.HasSlot; omega
  have hcell0 : o0.cell k = PL + BitVec.ofNat 64 (8 * k) := by unfold Obj.cell; rw [hb0]
  have hLy := Ra.layout_heap haC hh
  obtain ⟨p1, hp1, hord, -, -⟩ := hh.1
  have hq : q = p1 := Option.some.inj (hh.2.1.symm.trans hp1)
  subst hq
  obtain ⟨o', ho', hb', ht', hs'⟩ := hh.2.2.2.1 o0 ho0
  have hHs' : o'.HasSlot k := by unfold Obj.HasSlot at hHs0 ⊢; omega
  have hcell' : o'.cell k = o0.cell k := by unfold Obj.cell; rw [hb']
  have hx : ¬ a.Foot (PL + BitVec.ofNat 64 (8 * k)) := by
    rw [← hcell0]
    rintro (⟨o1, ho1, k1, hk1, hne1, hc1⟩ | hA | hN | ⟨-, c, hc, -⟩)
    · obtain ⟨o1', ho1', hb1', ht1', hs1'⟩ := hh.2.2.2.1 o1 ho1
      have hk1' : o1'.HasSlot k1 := by unfold Obj.HasSlot at hk1 ⊢; omega
      have hc1' : o1'.cell k1 = o0.cell k := by unfold Obj.cell at hc1 ⊢; rw [hb1', hc1]
      obtain ⟨rfl, rfl⟩ := cell_inj hord hLy ho' ho1' hHs' hk1' (hcell'.trans hc1'.symm)
      apply hne1
      rw [haC, ← ht1', ht', ht0]
      exact Hooks.pl_prot _
    · exact hps _ hA
    · exact hN (by simpa using hA0 o0 ho0 ht0 k hHs0)
    · rw [hcaps] at hc; cases hc
  have := hh.2.2.2.2.2.1 _ hx
  unfold rd
  rw [this]

end InitECandidate.Solver.MemSafe.Exb

#print axioms InitECandidate.Solver.MemSafe.Exb.pl_cell_const
