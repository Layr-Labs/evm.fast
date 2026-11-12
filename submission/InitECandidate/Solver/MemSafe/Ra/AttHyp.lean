import InitECandidate.Solver.MemSafe.Ra.AttPart2e

/-!
# `run_attempt`: the conditional-cost hypotheses of the callees without a table cost

`state_init` and `payload_header` have no entry in the cost table; their costs are hypotheses at the preconditions the walk establishes
(each stated once). Everything else on the way to `execute_block` has an unconditional table bound.
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

/-- `state_init(nodedb, root, codedb)`: two frozen node DBs. -/
def SiPreC : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop := fun vs s Γ _ => Ini.StatePre vs s Γ

/-- `payload_header(si)`: every object below the heap pointer, `si`'s payload a `tPL` object. -/
def PhPreC : List (ValueHOL 64) → State σ → Gam → Ptrs → Prop := fun vs s Γ p => Aw.Below Γ p.hp ∧ Exb.PhPre vs s Γ

def HypSiCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "state_init") 3 SiPreC B
def HypPhCost (σ : Type) (B : Nat) : Prop := CondCostC σ (nm "payload_header") 1 PhPreC B

end InitECandidate.Solver.MemSafe.Att
