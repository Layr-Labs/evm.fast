import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw349_0 : List (BitVec 8) := [3#8, 53#8, 133#8, 9#8, 103#8, 128#8, 0#8, 0#8]
def piece349_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw349_0).val
theorem piece349_0_eq : piece349_0 = raw349_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw349_0
end InitECandidate.Proofs.BackendStages.BytePieces
