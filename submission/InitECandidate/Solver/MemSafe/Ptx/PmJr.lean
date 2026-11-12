import InitECandidate.Solver.MemSafe.Ptx.GlAll
import InitECandidate.Solver.MemSafe.Frames.Jr

set_option autoImplicit false

/-!
# `process_message` keeps `JrNZ`

`journal` and `sk_buf` are outside `pmW` (the globals the frame loop assigns), so `process_message` leaves them unchanged
(`funSpec_pm_gw`), and `JrNZ` at the call's entry holds at its exit. (`FoPre` contains `JrNZ`.) This discharges the `JrNZ` half of F3c's
`HypPmM` (`Ptx/PcmDef.lean` in the F3 worktree).
-/

set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.Ptx
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Frames

variable {σ : Type} {X : Ctx 64}

theorem jr_notin_pmW : pmW.contains nmJr = false := by decide
theorem sk_notin_pmW : pmW.contains nmSk = false := by decide
theorem pm_in_names : pmNames.contains (nm "process_message") = true := by decide_cbv

/-- **`process_message` keeps `JrNZ`.** -/
theorem funSpec_pm_jrNZ (hC : X.code.lookup = guestCode) :
    FunSpec σ X (nm "process_message") (fun _ s _ t => JrNZ s → JrNZ t) := by
  intro vs body callee rs hl s hs hloc r hr h g hg
  have e : (evaluateHOLFiniteState s body).2.globals.lookup g = s.globals.lookup g := by
    rcases jrGs_cases hg with rfl | rfl
    · exact funSpec_pm_gw hC jr_notin_pmW pm_in_names vs body callee rs hl s hs hloc r hr
    · exact funSpec_pm_gw hC sk_notin_pmW pm_in_names vs body callee rs hl s hs hloc r hr
  obtain ⟨w, hw, hle⟩ := h g hg
  refine ⟨w, ?_, hle⟩
  unfold gword at hw ⊢
  rw [e]
  exact hw

end InitECandidate.Solver.MemSafe.Ptx

#print axioms InitECandidate.Solver.MemSafe.Ptx.funSpec_pm_jrNZ
