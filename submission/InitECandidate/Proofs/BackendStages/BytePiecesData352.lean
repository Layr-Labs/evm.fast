import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw352_0 : List (BitVec 8) := [131#8, 50#8, 5#8, 20#8, 131#8, 53#8, 133#8, 20#8, 3#8, 54#8, 5#8, 21#8, 131#8, 54#8, 133#8, 21#8, 51#8, 229#8, 82#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece352_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw352_0).val
theorem piece352_0_eq : piece352_0 = raw352_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw352_0
end InitECandidate.Proofs.BackendStages.BytePieces
