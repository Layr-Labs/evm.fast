import InitECandidate.Solver.MemSafe.Ra.AttFinal
import InitECandidate.Solver.Band2.AttemptTop

/-!
# `run_attempt`: closing the attempt ladder and `verify_stateless_new_payload`
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0

namespace InitECandidate.Solver.MemSafe.Att
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames InitECandidate.Solver.MemSafe.Entry
open InitECandidate.Solver.MemSafe.Eb

variable {σ : Type}

/-- `CcPre RaPre0` reads only the memory-independent parts: the globals. -/
theorem raPre_congr : ∀ (vs : List (ValueHOL 64)) (s t : State σ) (Γ : Gam), t.memory = s.memory → t.globals = s.globals →
    t.memaddrs = s.memaddrs → t.be = s.be → CcPre RaPre0 vs s Γ → CcPre RaPre0 vs t Γ := by
  intro vs s t Γ hm hg hd hbe ⟨hJ, ⟨⟨e, he, hse⟩, ⟨c, hc, hsc⟩⟩, p, hp, hpre⟩
  exact ⟨jrNZ_congr hg hJ, ⟨⟨e, by rw [gword_congr hg]; exact he, hse⟩, ⟨c, by rw [gword_congr hg]; exact hc, hsc⟩⟩, p,
    (ptrsOf_congr hg).trans hp, hpre⟩

/-- **`verify_stateless_new_payload`'s conditional cost** from `run_attempt`'s. -/
theorem condCost_verify_of_run_attempt {B : Nat}
    (hRA : CondCost σ guestCtx guestC (HR σ) (nm "run_attempt") Band.sgSi (CcPre RaPre0) B) :
    CondCost σ guestCtx guestC (HR σ) (nm "verify_stateless_new_payload") Band.sgSi (CcPre RaPre0)
      (1 + ((1 + B + (0 + 0) + 0) + 6) + (0 + 0) + 0) :=
  Band2.verify_condCost Hooks.guestHooksR_lawful raPre_congr
    (Band2.attempt_l7_of_run_attempt Hooks.guestHooksR_lawful raPre_congr hRA)

end InitECandidate.Solver.MemSafe.Att

#print axioms InitECandidate.Solver.MemSafe.Att.condCost_verify_of_run_attempt
