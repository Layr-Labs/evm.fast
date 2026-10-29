import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw737_0 : List (BitVec 8) := [51#8, 230#8, 181#8, 0#8, 111#8, 240#8, 95#8, 135#8]
def piece737_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw737_0).val
theorem piece737_0_eq : piece737_0 = raw737_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw737_0
end InitECandidate.Proofs.BackendStages.BytePieces
