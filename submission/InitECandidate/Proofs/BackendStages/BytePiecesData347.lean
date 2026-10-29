import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw347_0 : List (BitVec 8) := [3#8, 53#8, 5#8, 9#8, 103#8, 128#8, 0#8, 0#8]
def piece347_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw347_0).val
theorem piece347_0_eq : piece347_0 = raw347_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw347_0
end InitECandidate.Proofs.BackendStages.BytePieces
