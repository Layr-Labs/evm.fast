import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw178_0 : List (BitVec 8) := [51#8, 230#8, 181#8, 0#8, 147#8, 101#8, 0#8, 12#8, 111#8, 240#8, 159#8, 177#8]
def piece178_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw178_0).val
theorem piece178_0_eq : piece178_0 = raw178_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw178_0
end InitECandidate.Proofs.BackendStages.BytePieces
