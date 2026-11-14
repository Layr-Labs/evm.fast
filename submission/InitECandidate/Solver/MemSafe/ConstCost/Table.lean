import InitECandidate.Solver.MemSafe.ConstCost.Callers.C24
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ConstCost.Table
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := ConstCost.Core.analyze ConstCost.Callers.table24 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  ConstCost.Core.analyze_sound ConstCost.Callers.table24_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.ConstCost.Table
