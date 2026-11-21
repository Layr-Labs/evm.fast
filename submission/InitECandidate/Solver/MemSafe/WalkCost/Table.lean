import InitECandidate.Solver.MemSafe.WalkCost.Find
import InitECandidate.Solver.MemSafe.WalkCost.Core
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.WalkCost.Htab
def tableFind := InitECandidate.Solver.MemSafe.WalkCost.Core.extend BlsCost.Callers.table12 (nm "htab_find_leaf") bFind
theorem tableFind_sound {σ : Type} : TblSound σ guestCtx tableFind :=
 InitECandidate.Solver.MemSafe.WalkCost.Core.extend_sound BlsCost.Callers.table12_sound cc_find
#print axioms tableFind_sound
end InitECandidate.Solver.MemSafe.WalkCost.Htab
