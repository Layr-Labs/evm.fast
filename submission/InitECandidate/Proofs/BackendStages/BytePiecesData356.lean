import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw356_0 : List (BitVec 8) := [3#8, 53#8, 133#8, 16#8, 19#8, 21#8, 21#8, 1#8, 103#8, 128#8, 0#8, 0#8]
def piece356_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw356_0).val
theorem piece356_0_eq : piece356_0 = raw356_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw356_0
end InitECandidate.Proofs.BackendStages.BytePieces
