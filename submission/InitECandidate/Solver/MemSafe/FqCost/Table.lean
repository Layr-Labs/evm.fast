import InitECandidate.Solver.MemSafe.FqCost.Retable.S077
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.FqCost.Table
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := FqCost.CombCore.analyze FqCost.Retable.table77 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
 FqCost.CombCore.analyze_sound FqCost.Retable.table77_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.FqCost.Table
