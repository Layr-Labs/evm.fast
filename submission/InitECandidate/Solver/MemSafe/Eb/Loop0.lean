import InitECandidate.Solver.MemSafe.Eb.PartX
import InitECandidate.Solver.MemSafe.Rec.TxDec

/-!
# `execute_block`: the transaction slices (loop, part 0)

`slice_facts`: slice `j < ntx0` of the payload's transaction array is short, in the heap and inside a `tVAL` object, from the `tPL`
hook at the current state, given the cells `pl0 + 32 = ptxs0`, `pl0 + 40 = ntx0` (kept by `PlKeep`).
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Hooks

variable {σ : Type}

theorem slice_facts {Γ : Gam} {s : State σ} {pl0 ptxs0 ntx0 : BitVec 64}
    (hG : G guestC (HR σ) Γ s) (hpl : ∃ o ∈ Γ, o.base = pl0 ∧ o.ty = tPL)
    (h32 : rd s.memory (pl0 + BitVec.ofNat 64 32) = ptxs0) (h40 : rd s.memory (pl0 + BitVec.ofNat 64 40) = ntx0)
    {j : Nat} (hj : j < ntx0.toNat) :
    SlIn (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * j))) (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * j + 8))) ∧
      SlObj Γ (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * j))) (rd s.memory (ptxs0 + BitVec.ofNat 64 (16 * j + 8))) := by
  obtain ⟨o, ho, hob, hot⟩ := hpl
  obtain ⟨q, hq, hord, hL, hF, hT, hGl, hW⟩ := hG
  obtain ⟨-, -, hpw⟩ := plW_of_wf hot (hW o ho)
  obtain ⟨-, -, ⟨-, hsla⟩, -⟩ := hpw
  have e4 : txF s.memory o 4 = ptxs0 := by
    unfold txF Obj.cell; rw [hob]; exact h32
  have e5 : txF s.memory o 5 = ntx0 := by
    unfold txF Obj.cell; rw [hob]; exact h40
  rw [e4, e5] at hsla
  obtain ⟨h1, h2, -⟩ := hsla j hj
  exact ⟨h1, h2⟩

end InitECandidate.Solver.MemSafe.Eb
