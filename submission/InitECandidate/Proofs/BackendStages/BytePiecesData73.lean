import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw73_0 : List (BitVec 8) := [131#8, 181#8, 140#8, 254#8, 147#8, 149#8, 21#8, 0#8, 179#8, 133#8, 165#8, 1#8, 147#8, 133#8, 5#8, 254#8, 35#8, 176#8, 165#8, 0#8, 19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece73_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw73_0).val
theorem piece73_0_eq : piece73_0 = raw73_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw73_0
end InitECandidate.Proofs.BackendStages.BytePieces
