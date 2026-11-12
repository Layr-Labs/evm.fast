import InitECandidate.Solver.MemSafe.Eb.TabInst

/-!
# `execute_block`: the table callees as `CallR`
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

theorem csok_nil : CsOK [] := ⟨by simp, by simp, by simp⟩

/-- The `CallR` of a plain table entry (`cs = []`, `gw = []`). -/
theorem cr_plain {f : MlS} {sg : Sig} (hf : CSumm σ guestCtx guestC (HR σ) f sg [])
    (hg : sg.gw = []) :
    CallR (σ := σ) f (fun vs _ Γ p => ArgsOK guestC Γ p sg.params vs) (fun _ _ _ _ => False)
      (fun vs _ Γ p v _ Γ' p' => RetOK Γ' p p' vs sg.ret v ∧ (sg.grows = false → NewFresh Γ Γ' p p)) :=
  callR_of_csumm hf (by rw [hg]; simp) (by intro g _; rw [hg]; simp) csok_nil


end InitECandidate.Solver.MemSafe.Eb
