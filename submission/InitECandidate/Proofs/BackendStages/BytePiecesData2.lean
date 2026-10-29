import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw2_0 : List (BitVec 8) := [19#8, 101#8, 32#8, 0#8, 111#8, 240#8, 31#8, 207#8]
def piece2_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw2_0).val
theorem piece2_0_eq : piece2_0 = raw2_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw2_0
end InitECandidate.Proofs.BackendStages.BytePieces
