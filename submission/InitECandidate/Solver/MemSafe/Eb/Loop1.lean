import InitECandidate.Solver.MemSafe.Eb.Loop0

/-!
# `execute_block`: loop part 1 (`keepG` transport of buffers, `decode_transaction` as `CallR`)
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

theorem bufOK_keepG {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {b n : Nat}
    (h : BufOK guestC Γ p b n) : BufOK guestC (keepG Γ) p b n := by
  intro a ha
  rcases h a ha with ⟨o, ho, k, hk, hsc, rfl⟩ | ⟨hni, hal⟩
  · by_cases hko : KeepTy o.ty
    · exact Or.inl ⟨o, mem_keepG.mpr ⟨ho, hko⟩, k, hk, hsc, rfl⟩
    · right
      refine ⟨fun ⟨o', ho', h1, h2⟩ => ?_, Helpers.allocated_of_inObj hL (cell_in hord hL ho hk)⟩
      have hk8 : 8 * k < o.size := by unfold Obj.HasSlot at hk; omega
      have hin : InO o (o.cell k) := inO_cell hord hL ho hk8
      have heq : o = o' := gam_eq (gamOK_of_layout hL) ho (mem_keepG.mp ho').1 hin.1 hin.2 h1 h2
      subst heq
      exact hko (mem_keepG.mp ho').2
  · exact Or.inr ⟨fun hin => hni (inObj_keepG hin), hal⟩

theorem txBuf_keepG {Γ : Gam} {p : Ptrs} (hord : p.Ordered) (hL : Layout guestC p Γ) {m : Mem} {tx : BitVec 64} {n : Nat}
    (h : Rec.TxBuf Γ p m tx n) : Rec.TxBuf (keepG Γ) p m tx n :=
  ⟨h.1.imp id (bufOK_keepG hord hL), fun i hi => bufOK_keepG hord hL (h.2 i hi)⟩

end InitECandidate.Solver.MemSafe.Eb
