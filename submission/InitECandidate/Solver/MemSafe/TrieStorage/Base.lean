import InitECandidate.Solver.MemSafe.TrieCost.Main
import InitECandidate.Solver.MemSafe.BlsCost.Callers.C12
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.TrieStorage
variable {σ : Type}
def table0 := ArenaCost.Analyzer.extend BlsCost.Callers.table12 (nm "trie_lookup") TrieCost.bLookup
theorem table0_sound : TblSound σ guestCtx table0 :=
 ArenaCost.Analyzer.extend_sound BlsCost.Callers.table12_sound TrieCost.cc_trie_lookup
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.TrieStorage
