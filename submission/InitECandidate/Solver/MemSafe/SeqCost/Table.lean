import InitECandidate.Solver.MemSafe.SeqCost.Callers.C10
set_option autoImplicit false
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.SeqCost.Table
variable {σ : Type}
def costFin (p : ProgHOL 64) : Option Nat := SeqCost.Analyzer.analyze SeqCost.Callers.table10 p
theorem cost_guest_costA {p : ProgHOL 64} {B : Nat} (h : costFin p = some B) : Cost σ guestCtx p B :=
  SeqCost.Analyzer.analyze_sound SeqCost.Callers.table10_sound h
#print axioms cost_guest_costA
end InitECandidate.Solver.MemSafe.SeqCost.Table
