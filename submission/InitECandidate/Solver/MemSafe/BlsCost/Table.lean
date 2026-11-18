import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.BlsCost.Table
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := PairCost.Core.analyze BlsCost.Callers.table12 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  PairCost.Core.analyze_sound BlsCost.Callers.table12_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.BlsCost.Table
