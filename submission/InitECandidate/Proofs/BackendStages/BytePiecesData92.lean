import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw92_0 : List (BitVec 8) := [99#8, 116#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8, 51#8, 229#8, 181#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece92_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw92_0).val
theorem piece92_0_eq : piece92_0 = raw92_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw92_0
end InitECandidate.Proofs.BackendStages.BytePieces
