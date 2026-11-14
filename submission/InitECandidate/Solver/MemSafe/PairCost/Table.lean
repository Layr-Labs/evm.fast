import InitECandidate.Solver.MemSafe.PairCost.Callers.C14
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.PairCost.Table
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := PairCost.Core.analyze PairCost.Callers.table14 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  PairCost.Core.analyze_sound PairCost.Callers.table14_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.PairCost.Table
