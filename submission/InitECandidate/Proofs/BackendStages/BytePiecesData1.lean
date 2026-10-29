import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw1_0 : List (BitVec 8) := [19#8, 101#8, 0#8, 0#8, 111#8, 240#8, 159#8, 207#8]
def piece1_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw1_0).val
theorem piece1_0_eq : piece1_0 = raw1_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw1_0
end InitECandidate.Proofs.BackendStages.BytePieces
