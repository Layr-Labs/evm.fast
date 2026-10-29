import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw779_0 : List (BitVec 8) := [19#8, 5#8, 5#8, 12#8, 111#8, 16#8, 223#8, 252#8]
def piece779_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw779_0).val
theorem piece779_0_eq : piece779_0 = raw779_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw779_0
end InitECandidate.Proofs.BackendStages.BytePieces
