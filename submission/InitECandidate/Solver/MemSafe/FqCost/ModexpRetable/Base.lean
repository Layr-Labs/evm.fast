import InitECandidate.Solver.MemSafe.FqCost.Retable.S077
import InitECandidate.Solver.MemSafe.ModexpBn.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec InitECandidate.Solver.MemSafe
namespace InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
variable {σ : Type}
def table0 := FqCost.CombCore.extend FqCost.Retable.table77 (nm "pre_modexp") (3*10^31)
theorem table0_sound : TblSound σ guestCtx table0 :=
 FqCost.CombCore.extend_sound FqCost.Retable.table77_sound ModexpBn.cc_pre_modexp
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.FqCost.ModexpRetable
