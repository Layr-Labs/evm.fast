import InitECandidate.Proofs.ComputationCache
import Std
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace InitECandidate.Proofs.BackendStages.BytePieces
def raw676_0 : List (BitVec 8) := [51#8, 230#8, 181#8, 0#8, 147#8, 21#8, 85#8, 0#8, 51#8, 101#8, 198#8, 0#8, 111#8, 224#8, 70#8, 240#8]
def piece676_0 : List (BitVec 8) := (InitECandidate.Proofs.ComputationCache.boxedValue raw676_0).val
theorem piece676_0_eq : piece676_0 = raw676_0 := InitECandidate.Proofs.ComputationCache.boxedValue_eq raw676_0
end InitECandidate.Proofs.BackendStages.BytePieces
