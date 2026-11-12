import InitECandidate.Solver.MemSafe.Eb.Stm
import InitECandidate.Solver.MemSafe.Eb.Ld

/-!
# `execute_block`: `st g + off, x` into a block object reached through a global
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

variable {σ : Type}

theorem blk_cell_ex {Γ : Gam} {b : BitVec 64} {ty n off : Nat} {s : State σ} {p0 : Ptrs} {p : Ptrs}
    (hobj : Fct.holds p0 Γ p s (Fct.obj b ty n)) (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO) (h8 : off % 8 = 0)
    (hn : off + 8 ≤ n) :
    ∃ (M : Obj) (k : Nat), M ∈ Γ ∧ M.ty ∈ blockTys ∧ M.HasSlot k ∧ (guestC.ty M.ty).slot k = .prot ∧
      b + BitVec.ofNat 64 off = M.cell k := by
  obtain ⟨o, ho, hob, hot, hos⟩ := hobj
  refine ⟨o, off / 8, ho, by rcases hty with h | h | h <;> simp [blockTys, hot, h], ?_, blk_prot (hot ▸ hty) _, ?_⟩
  · unfold Obj.HasSlot; omega
  · unfold Obj.cell; rw [hob]
    have : off = 8 * (off / 8) := by omega
    rw [← this]

section stbo
variable {E : EbE σ} {En : Env} {S : FS}

theorem hn_stBo {g : MlS} {w : BitVec 64} {ty n off : Nat} {x : MlS} {xv : BitVec 64}
    (hgo : S (Fct.gobj g w ty)) (hobj : S (Fct.obj w ty n)) (hty : ty = tBOS ∨ ty = tBO ∨ ty = tMCO)
    (h8 : off % 8 = 0) (hn : off + 8 ≤ n) (hx : En x = some (.val (.word xv)))
    (hfree : ∀ s : State σ, PA E En S s → ∀ (Γ : Gam) (p : Ptrs), EbRun E.Γ0 E.s0 E.p0 Γ s p →
      HoldsAll E.p0 Γ p s S → ∀ f, S f → (∀ a v, f ≠ Fct.pcv a v) → ∀ y, f.reads y → y ≠ w + BitVec.ofNat 64 off) :
    HN (PA E En S) (.store (.op .add [gv g, cw off]) (lv x)) (PA E En (fun f => S f ∨ f = Fct.cellv (w + BitVec.ofNat 64 off) xv)) := by
  refine hn_stBlkV ?_ hfree
  intro s hpa Γ p hr hL
  exact ⟨evI_add (evI_gobj hpa hgo) (evI_cw s off), evI_lv_pa hpa hx, blk_cell_ex (hL _ hobj) hty h8 hn⟩

end stbo

end InitECandidate.Solver.MemSafe.Eb
