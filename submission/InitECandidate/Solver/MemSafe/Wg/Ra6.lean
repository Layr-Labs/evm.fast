import InitECandidate.Solver.MemSafe.Wg.Ra5

/-!
# Wg: the walk of `requests_append` (stores and assembly)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Wg
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

theorem blk_cell {Γ : Gam} {b : BitVec 64} {ty n off : Nat} (hobj : ∃ o ∈ Γ, o.base = b ∧ o.ty = ty ∧ n ≤ o.size)
    (hty : ty ∈ blockTys) (hprot : ∀ k, (guestC.ty ty).slot k = .prot) (h8 : off % 8 = 0) (hoff : off + 8 ≤ n) :
    ∃ (M : Obj) (k : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧
      b + BitVec.ofNat 64 off = M.cell k := by
  obtain ⟨o, ho, hb, ht, hs⟩ := hobj
  refine ⟨o, off / 8, ho, ht ▸ hty, by unfold Obj.HasSlot; omega, by rw [ht]; exact hprot _, ?_⟩
  unfold Obj.cell
  rw [hb, show 8 * (off / 8) = off by omega]

section ra6
variable {E : EbE σ} {En : Env}

end ra6

end InitECandidate.Solver.MemSafe.Wg
