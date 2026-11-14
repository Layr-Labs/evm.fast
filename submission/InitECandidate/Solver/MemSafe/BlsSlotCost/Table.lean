import InitECandidate.Solver.MemSafe.BlsSlotCost.Callers.C12
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsSlotCost.Table
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := BlsSlotCost.Core.analyze BlsSlotCost.Callers.table12 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  BlsSlotCost.Core.analyze_sound BlsSlotCost.Callers.table12_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.BlsSlotCost.Table
