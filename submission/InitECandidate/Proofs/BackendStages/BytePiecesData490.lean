import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw490_0 : List (BitVec 8) := [131#8, 181#8, 140#8, 254#8, 147#8, 149#8, 21#8, 0#8, 179#8, 133#8, 165#8, 1#8, 131#8, 181#8, 5#8, 240#8, 3#8, 182#8, 5#8, 0#8, 51#8, 5#8, 197#8, 0#8, 35#8, 176#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece490_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw490_0).val
theorem piece490_0_eq : piece490_0 = raw490_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw490_0
end InitECandidate.Proofs.BackendStages.BytePieces
