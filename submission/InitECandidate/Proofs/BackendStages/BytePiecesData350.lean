import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw350_0 : List (BitVec 8) := [131#8, 50#8, 5#8, 10#8, 131#8, 53#8, 133#8, 10#8, 3#8, 54#8, 5#8, 11#8, 131#8, 54#8, 133#8, 11#8, 51#8, 229#8, 82#8, 0#8, 103#8, 128#8, 0#8, 0#8]
def piece350_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw350_0).val
theorem piece350_0_eq : piece350_0 = raw350_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw350_0
end InitECandidate.Proofs.BackendStages.BytePieces
