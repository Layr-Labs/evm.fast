import InitECandidate.Solver.MemSafe.ConstCost.Prim.C14
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ConstCost.Analyzer
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := ConstCost.Core.analyze ConstCost.Prim.table14 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  ConstCost.Core.analyze_sound ConstCost.Prim.table14_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.ConstCost.Analyzer
