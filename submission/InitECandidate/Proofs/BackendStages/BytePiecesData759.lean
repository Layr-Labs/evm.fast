import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw759_0 : List (BitVec 8) := [51#8, 230#8, 181#8, 0#8, 111#8, 240#8, 159#8, 143#8]
def piece759_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw759_0).val
theorem piece759_0_eq : piece759_0 = raw759_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw759_0
end InitECandidate.Proofs.BackendStages.BytePieces
