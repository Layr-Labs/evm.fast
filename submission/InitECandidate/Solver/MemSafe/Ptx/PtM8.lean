import InitECandidate.Solver.MemSafe.Ptx.PtM7

/-!
# F3e: adopting `te` as a `tTE` record
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Hooks InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

theorem wf_te {Γ : Gam} {s : State σ} {o : Obj} (hty : o.ty = tTE) (ho : o ∈ Γ) (hG : GamOK Γ)
    (hw : Hooks.TeW Γ s.memory o) : (guestHooksR (σ := σ)).wf Γ s o := by
  rw [guestHooksR, extR_wf]
  refine ⟨⟨⟨gwf_none (by rw [hty]; decide), fun hj => absurd hj (by rw [hty]; decide)⟩,
    fun hl => absurd hl (by rw [hty]; decide)⟩, ?_⟩
  intro e he het
  simp only [Hooks.recTab, List.mem_cons, List.not_mem_nil, or_false] at he
  rcases he with rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl | rfl
  all_goals first
    | exact ⟨ho, hG, hw⟩
    | (exfalso; rw [hty] at het; revert het; cases s.be <;> decide)

end InitECandidate.Solver.MemSafe.Ptx
