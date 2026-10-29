import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw201_0 : List (BitVec 8) := [19#8, 101#8, 0#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece201_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw201_0).val
theorem piece201_0_eq : piece201_0 = raw201_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw201_0
end InitECandidate.Proofs.BackendStages.BytePieces
