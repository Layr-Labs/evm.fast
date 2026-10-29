import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw180_0 : List (BitVec 8) := [111#8, 240#8, 223#8, 184#8]
def piece180_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw180_0).val
theorem piece180_0_eq : piece180_0 = raw180_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw180_0
end InitECandidate.Proofs.BackendStages.BytePieces
