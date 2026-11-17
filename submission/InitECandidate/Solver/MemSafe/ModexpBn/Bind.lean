import InitECandidate.Solver.MemSafe.ModexpBn.Parts
import InitECandidate.Solver.MemSafe.ModexpBn.Guard
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open Flapjack.Pancake.PanLang (ProgHOL ExpHOL MlS ShapeHOL)
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.ModexpBn
theorem pre_bind_eq : preBind = .decCall (nm "elen") .one (nm "sat_word") [lv (nm "el")]
 (.seq guard preTail) := by
 conv => lhs; cbv
 conv => rhs; cbv
#print axioms pre_bind_eq
end InitECandidate.Solver.MemSafe.ModexpBn
