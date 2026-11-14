import InitECandidate.Solver.MemSafe.CryptoCost.Miller.Main
import InitECandidate.Solver.MemSafe.CryptoCost.Ecp.Main
set_option autoImplicit false
set_option maxHeartbeats 0
set_option maxRecDepth 1000000
set_option cbv.maxSteps 4000000000
open Flapjack Flapjack.PanSemStateFiniteExact
open InitECandidate.Solver.SourceCost InitECandidate.Solver.Spec
namespace InitECandidate.Solver.MemSafe.CryptoCost.Callers
variable {σ : Type}
def table0 := Analyzer.extend (Analyzer.extend Analyzer.baseTbl
    (nm "bn254_miller_raw") Miller.fullB) (nm "ecp_mul") Ecp.fullB
theorem table0_sound : TblSound σ guestCtx table0 :=
  Analyzer.extend_sound (Analyzer.extend_sound Analyzer.base_sound Miller.callee_cost) Ecp.callee_cost
#print axioms table0_sound
end InitECandidate.Solver.MemSafe.CryptoCost.Callers
