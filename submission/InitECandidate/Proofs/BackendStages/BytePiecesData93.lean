import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw93_0 : List (BitVec 8) := [99#8, 244#8, 165#8, 0#8, 103#8, 128#8, 0#8, 0#8, 51#8, 229#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece93_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw93_0).val
theorem piece93_0_eq : piece93_0 = raw93_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw93_0
end InitECandidate.Proofs.BackendStages.BytePieces
