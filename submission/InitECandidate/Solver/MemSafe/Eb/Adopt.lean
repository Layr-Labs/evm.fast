import InitECandidate.Solver.MemSafe.Eb.Fresh

/-!
# F3: adopting a fresh block as a hook-free block object (`tBOS`, `tBO`, `tMCO`)
-/

set_option autoImplicit false
set_option maxRecDepth 100000

namespace InitECandidate.Solver.MemSafe.Eb
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The hook of a block object is trivial. -/
theorem wf_blk (Γ : Gam) (s : State σ) (o : Obj) (h : o.ty = tBOS ∨ o.ty = tBO ∨ o.ty = tMCO) :
    (guestHooksR (σ := σ)).wf Γ s o := by
  rw [guestHooksR, extR_wf]
  have h' : o.ty = 76 ∨ o.ty = 77 ∨ o.ty = 78 := h
  refine ⟨⟨⟨gwf_none ?_, fun hj => ?_⟩, fun hl => ?_⟩, ?_⟩
  · rcases h' with h | h | h <;> rw [h] <;> decide
  · rcases h' with h | h | h <;> rw [h] at hj <;> exact absurd hj (by decide)
  · rcases h' with h | h | h <;> rw [h] at hl <;> exact absurd hl (by decide)
  · intro e he hty
    have := recTab_ty he
    rw [hty] at this
    rcases h' with h | h | h <;> rw [h] at this <;> exact absurd this (by decide)

theorem blk_prot {t : Nat} (h : t = tBOS ∨ t = tBO ∨ t = tMCO) (k : Nat) :
    (guestC.ty t).slot k = .prot := by
  rcases h with rfl | rfl | rfl <;> rfl

/-- A fresh, aligned block of a block type joins the typing. -/
theorem g_adopt_blk {Γ : Gam} {s : State σ} {p : Ptrs} (hG : G guestC (guestHooksR (σ := σ)) Γ s)
    (hp : ptrsOf s = some p) {x : Obj} (hty : x.ty = tBOS ∨ x.ty = tBO ∨ x.ty = tMCO)
    (hal : x.lo % 8 = 0) (hsz8 : x.size % 8 = 0) (hmin : (guestC.ty x.ty).minSz ≤ x.size)
    (hpos : 0 < x.size) (hlive : (guestC.ty x.ty).region.Live p x.lo x.size)
    (hdisj : ∀ a : BitVec 64, InO x a → ¬ InObj Γ a.toNat) :
    G guestC (guestHooksR (σ := σ)) (Γ ++ [x]) s := by
  refine G_addObjL guestHooksR_mono hG hal hsz8 hpos hmin (fun q hq => by rw [hp] at hq; cases hq; exact hlive)
    hdisj (fun k _ => by rw [blk_prot hty k]; trivial) ?_ (fun _ _ => wf_blk _ _ _ hty)
  rcases hty with h | h | h <;> rw [h] <;> decide

end InitECandidate.Solver.MemSafe.Eb
