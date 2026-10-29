import InitE.NatE
import Flapjack.Compiler.Backend.Semantics.TargetSem.MachineSem

namespace InitE
open Flapjack

/-- An actual finite target execution ending in Halt; a timeout is not termination. -/
def targetTerminatesAt {S Q σ : Type} (mc : MachineConfig 64 S Q)
    (ffi : HolFfiState σ) (ms : S) (steps : Nat) : Prop :=
  ∃ outcome ms' ffi', evaluateTargetHOL mc ffi steps ms = (.halt outcome, ms', ffi')

def targetTerminatesWithin {S Q σ : Type} (score : NatE) (mc : MachineConfig 64 S Q)
    (ffi : HolFfiState σ) (ms : S) : Prop :=
  score.Within (targetTerminatesAt mc ffi ms)

/-- Infinity still demands the compiler target evaluator's finite Halt witness. -/
theorem target_termination_iff_infinity {S Q σ : Type} (mc : MachineConfig 64 S Q)
    (ffi : HolFfiState σ) (ms : S) :
    (∃ outcome events, machineSemHOL mc ffi ms (.terminate outcome events)) ↔
      targetTerminatesWithin .infinity mc ffi ms := by
  constructor
  · rintro ⟨outcome, events, steps, ms', ffi', hrun, _⟩
    exact ⟨steps, trivial, outcome, ms', ffi', hrun⟩
  · rintro ⟨steps, _, outcome, ms', ffi', hrun⟩
    exact ⟨outcome, ffi'.ioEvents, steps, ms', ffi', hrun, rfl⟩

end InitE
