import InitECandidate.Solver.MemSafe.SlotCost.Callees.C03
import InitECandidate.Solver.MemSafe.RlpCost.Callers.C24
import InitECandidate.Solver.Spec.P256Fold
import InitECandidate.Solver.MemSafe.Wire.Guest
import InitECandidate.Solver.Band2.Incorporate
import InitECandidate.Solver.Band6.UbCost

/-!
# Wg: cost kit (unconditional costs of straight-line and loop pieces by the table analyzer)
-/

set_option autoImplicit false
set_option maxRecDepth 100000
set_option maxHeartbeats 0
set_option cbv.maxSteps 4000000000
set_option cbv.warning false

namespace InitECandidate.Solver.MemSafe.BalCost.Analyzer
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
open InitECandidate.Solver.MemSafe InitECandidate.Solver.MemSafe.Types
open InitECandidate.Solver.MemSafe.Frames

variable {σ : Type}

/-- The table analyzer's bound of a program, for the final table of the guest. -/
def costFin (p : ProgHOL 64) : Option Nat :=
  SlotCost.Core.analyze SlotCost.Callees.table3 p

theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  SlotCost.Core.analyze_sound SlotCost.Callees.table3_sound h


end InitECandidate.Solver.MemSafe.BalCost.Analyzer
