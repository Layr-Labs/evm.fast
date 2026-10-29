import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw351_0 : List (BitVec 8) := [3#8, 54#8, 5#8, 12#8, 131#8, 53#8, 133#8, 12#8, 51#8, 101#8, 198#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece351_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw351_0).val
theorem piece351_0_eq : piece351_0 = raw351_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw351_0
end InitECandidate.Proofs.BackendStages.BytePieces
